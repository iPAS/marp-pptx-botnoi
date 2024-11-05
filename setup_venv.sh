#!/bin/bash

VENV_PATH=$1
[[ -z "${VENV_PATH}" ]] && VENV_PATH=venv

CUR_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
# echo $CUR_DIR

if [[ "$(uname)" == *"Darwin"* ]]; then
    # brew install pyqt@5
    OPTIONS="--system-site-packages"
    brew install postgresql
    brew install python-setuptools
else
    req_debs=" libpq-dev libsasl2-dev libldap2-dev libssl-dev python-dev-is-python3"
    installed_debs=`apt list --installed 2>/dev/null | grep -c $(echo "${req_debs}" | sed 's/ / -e /g')`
    req_debs_arr=( ${req_debs} )
    [[ ${installed_debs} -lt ${#req_debs_arr[@]} ]] && sudo apt install ${req_debs}
fi

version=$(python --version 2>&1 | cut -d\  -f2 | cut -d. -f1)
if [ $((version)) -ge 3 ]; then
    PYTHON=python
else
    PYTHON=python3
fi

if [[ "$(uname)" == *"Linux"* ]] || [[ "$(uname)" == *"Darwin"* ]]; then
    BIN_PATH="${VENV_PATH}"/bin
    PYTHON_PATH="$(which $PYTHON)"
else
    BIN_PATH="${VENV_PATH}"/Scripts
    PYTHON_PATH="$(which $PYTHON | sed -e 's/^\///' -e 's/\//\\/g' -e 's/^./\0:/').exe"
fi


# Create VirtualEnv
echo "Get Python from ${PYTHON_PATH}"
# read -p "... for debugging, press to continue ..."
virtualenv "${VENV_PATH}" --python="${PYTHON_PATH}" ${OPTIONS}
# read -p "... for debugging, press to continue ..."

# Install additional packages
if [ -d "${VENV_PATH}" ]; then
    . "${BIN_PATH}"/activate

    if [[ "$(which python)" != *"${BIN_PATH}/python" ]]; then
        echo 'Error: cannot activate VirtualEnv'
        exit 255
    fi

    echo "Get get-pip.py"
    wget https://bootstrap.pypa.io/get-pip.py || ( echo 'Error: cannot get get-pip.py' && exit 255 )
    mv get-pip.py "${VENV_PATH}"
    python ${VENV_PATH}/get-pip.py

    if [[ "$(uname)" != *"Darwin"* ]]; then
        echo
        # pip install PyQt5
        pip install setuptools
    fi

    pip install pip --upgrade

    # Install pip requirements
    pip install -r requirements.pip

    # Install NodeEnv
    pip install nodeenv
    nodeenv -p --requirements="${CUR_DIR}/requirements.npm"
else
    echo 'Error: cannot create VirtualEnv'
fi

# read -p "... for debugging, press to continue ..."

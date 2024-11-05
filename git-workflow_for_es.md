---
# tutorial --> https://www.youtube.com/watch?v=EzQ-p41wNEE
marp: true
# theme: gaia
theme: uncover
class: invert
# style: |
#     section h2 {
#         text-align: left;
#     }
paginate: true
# backgroundImage: url('https://url/to/cutoff/image.png')
# math: mathjax
# header: 'header'
# footer: 'footer'
---

# Git: Workflow and Conventions for Embedded Systems

Basics, Branching, and Commit Message Conventions

<span style="color:blue;">**Presented by**</span>
Pasakorn Tiwatthanont [10/2024]

<!-- _paginate: hide -->

---

## Outlines

- **Basic Workflow Steps**
- **Branching and the Convention**
- **Commit Message Convention**

---

## Introduction to Git Workflow

- **What is Git Workflow?**
  - A series of steps to manage code changes and collaborate effectively.
- **Why it’s Important?**
  - Keeps codebase organized
  - Enables smooth collaboration
  - Minimizes conflicts and errors

---

## Basic Git Workflow Steps

1. **Clone the Repository**
   - Start by cloning, to have a local copy.
2. **Create a New Branch**
   - Each branch has just one objective (feature or fix).
3. **Make Changes & Commit Regularly**
   - Commit often, with small changes and meaningful messages.

---

## Basic Git Workflow Steps (cont.)

4. **Sync with the Main Branch Regularly**
   - Pull to avoid conflicts.
5. **Push Your Branch to Remote**
   - Push your changes (commits) when you’re ready for review.
6. **Create a Pull Request (PR), then Merge**
   - Get feedback and approval for your changes before merging.

---

## Git GUI Clients – Alternatives to the CLI

1. **GitKraken** – Intuitive, cross-platform, with built-in support for GitFlow and visualizations. (Linux, MacOS, Windows)
2. **Sourcetree** – Comprehensive interface for advanced Git features, by Atlassian. (MacOS, Windows)
3. **GitK** – Fast, simple, and free for Linux users. (Linux, MacOS, Windows)

---

## When Do We Need Branching?

**Collaborative Development**: Each team member can work on their own branch to avoid conflicts.

- **Feature Development**
  - Isolate new features to avoid disrupting the main codebase.
- **Bug Fixes**
  - Use separate branches for each bug to keep fixes organized.
- **Experimentation & Prototyping**
  - Keep experimental code on its own branch.

---

![bg h:100% left](git-workflow_for_es/branching_strategy_1.png)

**Feature Branches**
Isolate new features to avoid disrupting the main codebase.

---

![bg h:100% left](git-workflow_for_es/branching_strategy_2.png)

**Develop Branch**
`feature/<...>` is branched to develop a new feature,
which will be merged on `develop`, released on `main`.

---

![bg h:100% left](git-workflow_for_es/branching_fix.png)

**Bugfix Branch**
`bugfix/<...>` is binded with one specific issue.

---

## Branch Naming Conventions

- **Feature Branches**: `feature/<description>`
  - Example: `feature/1-led-running`
- **Bug Fix Branches**: `bugfix/<description>` or `fix/<description>`
  - Example: `fix/2-uart-unstable`
- **Documentation Branches**: `docs/<description>`
  - Example: `docs/3-update-readme`

**Note**: always put an issue number in front of the description.

---

## Commit Message Convention

- **Format**:

  ```xml
  <type>(<scope>): <subject>
  <body> (optional)
  <footer> (optional)
  ```

- **Why Commit Conventions Matter?**
  - Helps track changes easily
  - Provides context to team members
  - Simplifies debugging and maintenance

---

## Commit Message Structure

- **Scope** (optional):
  - Specifies the area of the code affected, e.g., `LED`, `IO`, or `UART`.
- **Subject**:
  - Brief, imperative description of the change.
- **Body** (optional):
  - Detailed explanation of what was changed and why.
- **Footer** (optional):
  - References issue IDs or highlights breaking changes.

---

## Types of Commit Messages

- **feat**: New feature – `feat(LED): add LED running`
- **refactor**: Easier to understand – `refactor(UART): small-capitalize var`
- **fix**: Bug fix – `fix(IOC): pull-up unused pins`
- **test**: Adding tests – `test(UART): add tests`
- **docs**: Documentation – `docs: update setup instructions`
- **chore**: Etc. – `chore: add EEPROM cleaner script`

---

## Example Commit Message

```text
feat(LED): lit LED responses

LED light displays the state correcponding to the activity that
user commanded.

Closes #123
```

- **Key Elements**:
  - `feat(LED)`: Type and scope.
  - **Subject**: "lit LED responses"
  - **Body**: Adds context for the team.
  - **Footer**: Links to issue #123.

---

## Summary and Best Practices

- **Follow Branching Conventions**:
  - Don't forget the structure, and naming.
- **Use Descriptive Commit Messages**:
  - Make your friend understand changes at a glance.
- **Commit Often and Small**:
  - Keeps changes manageable and reduces conflicts.
- **Review Regularly**:
  - Pull requests and feedback ensure high-quality code.

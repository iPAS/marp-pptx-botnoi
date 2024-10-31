---
marp: true
---


### Slide 1: Title Slide
- **Title**: Git Workflow, Branching, and Commit Message Conventions
- **Subtitle**: A Guide for Junior Developers
- **Presented by**: [Your Name]

---

### Slide 2: Introduction to Git Workflow
- **What is Git Workflow?**
  - A series of steps to manage code changes and collaborate effectively.
- **Why it’s Important?**
  - Keeps codebase organized
  - Enables smooth collaboration
  - Minimizes conflicts and errors

---

### Slide 3: Basic Git Workflow Steps
1. **Clone the Repository**
   - Start by cloning the main repository to have a local copy.
2. **Create a New Branch**
   - Always work on a separate branch for each feature or fix.
3. **Make Changes & Commit Regularly**
   - Commit often, with small changes and meaningful messages.
4. **Sync with the Main Branch Regularly**
   - Regularly pull changes from the main branch to avoid conflicts.
5. **Push Your Branch to Remote**
   - Push your changes when you’re ready for review.
6. **Create a Pull Request (PR)**
   - Get feedback and approval for your changes before merging.
7. **Merge & Clean Up**
   - Merge once approved, and delete branches that are no longer needed.

---

### Slide 4: When Do We Need Branching?
- **Feature Development**
  - Isolate new features to avoid disrupting the main codebase.
- **Bug Fixes**
  - Use separate branches for each bug to keep fixes organized.
- **Experimentation & Prototyping**
  - Keep experimental code on its own branch.
- **Release Versions**
  - Prepare and test releases on dedicated branches, like `release/v1.0`.
- **Hotfixes for Production**
  - Urgent fixes go into hotfix branches to address immediate issues.
- **Collaborative Development**
  - Each team member can work on their own branch to avoid conflicts.

---

### Slide 5: Branch Naming Conventions
- **Feature Branches**: `feature/<description>`
  - Example: `feature/user-authentication`
- **Bug Fix Branches**: `bugfix/<description>` or `fix/<description>`
  - Example: `fix/login-issue`
- **Hotfix Branches**: `hotfix/<description>`
  - Example: `hotfix/critical-security-patch`
- **Release Branches**: `release/<version-number>`
  - Example: `release/1.0.0`
- **Documentation Branches**: `docs/<description>`
  - Example: `docs/update-readme`

---

### Slide 6: Commit Message Convention
- **Format**:
  ```
  <type>(<scope>): <subject>
  <body> (optional)
  <footer> (optional)
  ```
- **Why Commit Conventions Matter?**
  - Helps track changes easily
  - Provides context to team members
  - Simplifies debugging and maintenance

---

### Slide 7: Types of Commit Messages
- **feat**: New feature – `feat(auth): add user login functionality`
- **fix**: Bug fix – `fix(ui): correct button alignment`
- **docs**: Documentation changes – `docs(readme): update install instructions`
- **style**: Code style, formatting – `style: apply formatting rules`
- **refactor**: Code refactoring – `refactor(auth): simplify token logic`
- **perf**: Performance improvements – `perf: optimize query`
- **test**: Adding tests – `test(auth): add login unit tests`
- **chore**: Routine tasks – `chore(deps): update npm packages`

---

### Slide 8: Commit Message Structure
- **Scope** (optional):
  - Specifies the area of the code affected, e.g., `auth`, `ui`, or `api`.
- **Subject**:
  - Brief, imperative description of the change.
- **Body** (optional):
  - Detailed explanation of what was changed and why.
- **Footer** (optional):
  - References issue IDs or highlights breaking changes.

---

### Slide 9: Example Commit Message
- **Example**:
  ```
  feat(api): add endpoint for user profile update

  This endpoint allows users to update their profile information,
  including email and username. Validations added for required fields.

  Closes #123
  ```
- **Key Elements**:
  - `feat(api)`: Type and scope.
  - **Subject**: “add endpoint for user profile update.”
  - **Body**: Adds context for the team.
  - **Footer**: Links to issue #123.

---

### Slide 10: Summary and Best Practices
- **Follow Branching Conventions**: Keep branches organized and named for clarity.
- **Use Descriptive Commit Messages**: Make it easy to understand changes at a glance.
- **Commit Often and Small**: Keeps changes manageable and reduces conflicts.
- **Review Regularly**: Pull requests and feedback ensure high-quality code.

---

### Slide 11: Git GUI Clients – Alternatives to the Command Line
- **What is a Git GUI Client?**
  - A Git GUI (Graphical User Interface) client provides a visual way to interact with Git.
  - Great for beginners who prefer a point-and-click interface over typing commands.
- **Popular Git GUI Clients**
  1. **GitHub Desktop** – Simple and beginner-friendly, especially for GitHub users.
  2. **Sourcetree** – Comprehensive interface for advanced Git features, by Atlassian.
  3. **GitKraken** – Intuitive, cross-platform, with built-in support for GitFlow and visualizations.
  4. **Fork** – Fast, customizable, popular among macOS and Windows users.
  5. **SmartGit** – Suited for advanced workflows, ideal for managing repositories.
- **Benefits of Using Git GUI Clients**
  - **Visual Branching and Merging**: Easier to view commit history and branches.
  - **Simplified Operations**: Actions like commit, push, and pull are accessible with a click.
  - **Reduced Learning Curve**: Lowers the barrier for new users unfamiliar with Git commands.
- **Considerations**: GUI clients are helpful, but learning Git commands provides flexibility, especially for automation.

---

### Slide 12: Questions?
- **Open the Floor** for any questions.
- **Examples** available upon request.

---

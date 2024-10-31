---
marp: true
theme: gaia
# theme: uncover
paginate: true
# backgroundImage: url('https://url/to/cutoff/image.png')
---

# Git Workflow, Branching, and Commit Message Conventions

#### **Presented by**: [Your Name]

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
   - Start by cloning the main repository to have a local copy.
2. **Create a New Branch**
   - Always work on a separate branch for each feature or fix.
3. **Make Changes & Commit Regularly**
   - Commit often, with small changes and meaningful messages.

---

## Basic Git Workflow Steps (cont.)

4. **Sync with the Main Branch Regularly**
   - Regularly pull changes from the main branch to avoid conflicts.
5. **Push Your Branch to Remote**
   - Push your changes when you’re ready for review.
6. **Create a Pull Request (PR)**
   - Get feedback and approval for your changes before merging.
7. **Merge & Clean Up**
   - Merge once approved, and --delete branches that are no longer needed--.

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

## Branch Naming Conventions

- **Feature Branches**: `feature/<description>`
  - Example: `feature/1-user-authentication`
- **Bug Fix Branches**: `bugfix/<description>` or `fix/<description>`
  - Example: `fix/2-login-issue`
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

## Types of Commit Messages

- **feat**: New feature – `feat(auth): add user login functionality`
- **fix**: Bug fix – `fix(ui): correct button alignment`
- **docs**: Documentation – `docs(readme): update install instructions`
- **refactor**: Code refactoring – `refactor(auth): simplify token logic`
- **perf**: Performance improvements – `perf: optimize query`
- **test**: Adding tests – `test(auth): add login unit tests`
- **chore**: Routine tasks – `chore(deps): update npm packages`

---

## Commit Message Structure

- **Scope** (optional):
  - Specifies the area of the code affected, e.g., `auth`, `ui`, or `api`.
- **Subject**:
  - Brief, imperative description of the change.
- **Body** (optional):
  - Detailed explanation of what was changed and why.
- **Footer** (optional):
  - References issue IDs or highlights breaking changes.

---

## Example Commit Message

```text
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

## Summary and Best Practices

- **Follow Branching Conventions**: Keep branches organized and named for clarity.
- **Use Descriptive Commit Messages**: Make it easy to understand changes at a glance.
- **Commit Often and Small**: Keeps changes manageable and reduces conflicts.
- **Review Regularly**: Pull requests and feedback ensure high-quality code.

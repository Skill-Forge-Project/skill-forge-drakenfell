
# ➡️ Skill Forge Contributing Guidelines

## 📝 Prerequisites:
* [Oracle VM Virtualbox](https://www.virtualbox.org/)
* [Vagrant](https://developer.hashicorp.com/vagrant/install?product_intent=vagrant)
* [Postman](https://www.postman.com/downloads/)
* It is recommended to use VSCode with [Remote SSH extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)

---

## 🦾 Skills Required:
* **Advanced Python**
* **HTML, CSS, JavaScript**
* **Flask / Bootstrap/ Tailwind CSS**
* **PostgreSQL & MongoDB**
* **Docker & Docker Compose**
* Familiar with **Linux** and **bash**
* **Postman**
* Familiarity with networking concepts such as IP addressing, DNS, ports, and firewall configurations.
* **Virtualization & Containerization**: Experience with virtualization platforms and container orchestration tools.
* **Git & GitHub**: Deep understanding of version control, including branches, pull requests, issues, and collaborative workflows.
* Confident working across various technologies directly from the terminal, efficiently navigating between tools and systems.
##### ❗While not of all these technologies are strictly required to contribute to **Skill Forge** it is necessary to have at least basic understanding of web-development, building & deploying and version control.

--- 

### 💾 Setup Your Own Dev Environment:
To contribute to the **Skill Forge** project, you’ll first need to set up a local instance of the [**Drakenfell Dev Environment**](https://github.com/Skill-Forge-Project/skill-forge-drakenfell).

The **Drakenfell Realm** is a ready-to-use development environment designed specifically for **Skill Forge** contributors. It provides a pre-configured setup, allowing you to quickly launch a local instance of **Skill Forge**, make changes, and contribute efficiently to the project. 🛠️

To begin, you’ll need to install the following tools:
1. [**Oracle VM VirtualBox**](https://www.virtualbox.org/) – Hypervisor of type-2.
2. [**Vagrant**](https://developer.hashicorp.com/vagrant/install?product_intent=vagrant) – A tool for building and managing virtualized development environments.

By using **Drakenfell**, you’ll be able to:
- Set up your own development environment effortlessly.
- Make code changes, test features, and contribute seamlessly to the Skill Forge project.
- Work in a stable environment that mirrors the production setup.
* Clone the repository 
```sh
git clone https://github.com/Skill-Forge-Project/skill-forge-drakenfell.git
```
* Navigate to the repo
```sh
cd skill-forge-drakenfell
```
* Inside the working directory you will find the `Vagranfile` and the auxiliary files & scripts needed to bring the Drakenfell Realm UP
```
.
├── Vagrantfile
├── achievements.sql
├── docker-compose.yaml
├── docker-provision.sh
├── init-mongo.js
├── init.sql
├── mongo-provision.sh
├── node-provision.sh
└── postgres-provision.sh
```
* Simply run `vagrant up`, and within a few minutes, your development environment will be ready. While this process is straightforward, having a basic understanding of Vagrant is recommended before proceeding with further steps. If you need help, refer to the [official documentation](https://developer.hashicorp.com/vagrant/docs)
* Once the Drakenfell Realm is deployed, you can log into the virtual machine by running `vagrant ssh`. All the necessary packages, libraries, databases, APIs, and runtimes for development are already installed and configured, so you're ready to go.
* The final step requires some manual intervention. You’ll need to set up **Git SSH access** for your user within the Vagrant VM. Afterward, clone your forked repository to begin contributing.
* Use the `Piston API Drakenfall.postman_collection.json` file to import the required endpoints into **Postman**, allowing you to easily orchestrate and interact with the Piston API during development.

---

## 📁Fork the repository
Start by creating a fork of the **[Skill Forge](https://github.com/Skill-Forge-Project/skill_forge)** repository on your own GitHub account. This will allow you to work on your own copy of the project. 
After forking the repository, clone it into your **Drakenfell Realm** instance. This is where you'll be making your contributions to the project.
For a smoother workflow, it’s recommended that you set up **SSH authorization** with your GitHub profile. This will allow you to push and pull changes securely without having to repeatedly enter your GitHub credentials.
[Generating SSH Key](https://git-scm.com/book/en/v2/Git-on-the-Server-Generating-Your-SSH-Public-Key)
[Add SSH Key to your GitHub Account](https://www.inmotionhosting.com/support/server/ssh/how-to-add-ssh-keys-to-your-github-account/)

How to clone a repo with ssh:
* Go to your forked repository in your GitHub profile. In the upper right corner of the repository page, click the green `Code` button.
* Under the `Code` dropdown, select the `SSH` tab, and copy the SSH URI (it will look something like this: `git@github.com:<your-username>/<repo-name>.git`).
* Clone the repository in your Drakenfell Realm instance
```sh
git clone git@github.com:<your-username>/<repo-name>.git
```

--- 

## 🔀Create your own branch with the proper name. 
### Branch naming convention:

**New Feature Development:**
Includes new user stories or whole new feature introduction, e.g.:
```
• feature/user-google-authentication
• feature/homepage-uui-cards
• feature/add-search-functionality
• feature/add-profile-page
```
**Bug Fixes:**
Priority 1 and 2 bug fixes, not critical, e.g.:
```
• bugfix/logs-database-issue
• bugfix/resolve-signup-error
• bugfix/api-response-fix
• bugfix/database-connection-error
```
**Hot-fixes:**
Priority 0 bug fixes, production critical, e.g.:
```
• hotfix/critical-security-patch
• hotfix/fix-broken-build
• hotfix/urgent-ui-fix
• hotfix/authentication-issue
```

**Miscellaneous:**
```
• chore/update-dependencies
• chore/code-cleanup
• test/add-unit-tests
• refactor/remove-legacy-code
• refactor/new-database-integration
• refactor/ui-reword
```

---

### 🔄 After you are done with you changes open an Pull-Request and submit you commits. 

To ensure a smooth and efficient code review process, please follow these guidelines when creating a pull request (PR):

**Descriptive Title**
* Provide a concise and clear title that summarizes the purpose of the PR. Avoid generic titles like “Fixes” or “Changes”—be specific.
* ✅  Add user authentication with JWT
*  ❌  Fixed stuff

**Detailed Description**
* **What was changed:** Provide a summary of the changes made in the PR.
* **Why it was changed:** Explain the problem you’re solving or the new feature you’re adding.
* **How it was changed:** Outline the approach taken, and any relevant design decisions.
* **Dependencies:** List any other PRs, issue, libraries, or configurations this PR depends on.
* **Additional context or screenshots:** If relevant, include screenshots for UI changes or logs of issues solved.

**Break Down Large PRs**
* Keep your pull requests small and focused. If the change is large, consider splitting it into smaller, incremental PRs. This makes reviews quicker and less error-prone.

**Link to Relevant Issues**
* If the PR fixes a bug or implements a feature request, reference the issue number using the appropriate keywords so it can be closed automatically after merging.

**Follow Coding Standards**
* Ensure your code follows the project’s coding conventions, such as:
* Code style (e.g., naming conventions, formatting)
* Consistent use of comments and documentation
* Tests for new or updated functionality

**Document Changes**
* Update any relevant documentation, such as API endpoints, configuration files, or README.md, as part of the PR.
* If this change requires environment-specific setup (e.g., new environment variables), clearly explain this in the description.

**Keep PRs Up-to-date**
* If your PR remains open for an extended period, rebase it with the latest changes from the main or development branch. Resolve any merge conflicts early to prevent delays in the review process.

**Request Review**
* Assign appropriate reviewers ([@karastoyanov](https://github.com/karastoyanov)).
* Tag them in the description or use the platform’s review request feature.
* If a specific area of code needs attention, mention it to the reviewer(s).

**Be Open to Feedback**
* Be responsive to reviewer comments.
* If feedback requires changes, update the PR promptly and re-request reviews.
* For larger discussions or significant design changes, consider discussing them in a separate issue or meeting.

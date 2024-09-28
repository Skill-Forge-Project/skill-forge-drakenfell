
# ➡️ Skill Forge Contributing Guidelines

## 📝 Prerequisites:
* [Oracle VM Virtualbox](https://www.virtualbox.org/)
* [Vagrant](https://developer.hashicorp.com/vagrant/install?product_intent=vagrant)
* Postman
* It is recommended to use VSCode with [Remote SSH extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)

## 🦾 Skills Required:
* Advanced Python
* HTML, CSS, JavaScript 
* Flask / Bootstrap/ Tailwind CSS
* PostgreSQL & MongoDB
* Docker & Docker Compose
* Extended skills with Linux and bash
* Postman
* Basic knowledge about networking(IP, DNS, ports, Firewall)
* Good to have at least basic experience with virtualisation and containerisation
* Deep understanding of git & GitHub (issues, pull requests, branches)
* Feeling comfortable working in the terminal

### 💾 Setup Your Own Dev Environment:
In order to be able to contribute to the project you need to have a working local instance of [Drakenfell Dev Environment](https://github.com/Skill-Forge-Project/skill-forge-drakenfell)

**Drakenfell Realm** is a pre-made dev version of Skill Forge aimed to deliver a ready-to-go instance which **Skill Forge** contributors can setup and build quickly and use to commit their changes. You will need to install [Oracle VM Virtualbox](https://www.virtualbox.org/) and [Vagrant](https://developer.hashicorp.com/vagrant/install?product_intent=vagrant) to setup your personnel instance.

The [Drakenfell Dev Environment](https://github.com/Skill-Forge-Project/skill-forge-drakenfell) repository provides everything necessary to deploy your own environment in minutes.
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
* Simply run `vagrant up` and in a few minutes your instance will be ready. However, it is highly recommended to have some knowledge with Vagrant before the next steps. You can refer to the [official documentation](https://developer.hashicorp.com/vagrant/docs) in case you need help.
* After the Drakenfell Realm is deployed you can run `vagrant ssh` to login to the virtual machine. Every package and library necessary for the development is already installed and configured, including databases, API's, runtimes.
* The last step requires manual intervention. You will need to setup git ssh access for your user in the Vagrant VM and clone the forked repository.


## 📁Fork the repository
Create a fork copy of the **[Skill Forge](https://github.com/Skill-Forge-Project/skill_forge)** on your own account. Clone the forked repository inside the Drakenfell Realm instance. It is recommended to create and setup SSH authorization with your GitHub profile.
Refer to the following documentation for more details:
[Generating SSH Key](https://git-scm.com/book/en/v2/Git-on-the-Server-Generating-Your-SSH-Public-Key)
[Add SSH Key to your GitHub Account](https://www.inmotionhosting.com/support/server/ssh/how-to-add-ssh-keys-to-your-github-account/)

How to clone a repo with ssh:
* Open the forked repository in your GitHub profile and navigate to the green button `Code` in the upper right corner.
* Select the `SSH` tab and copy the SSH URI
* Clone the repository in your Drakenfell Realm instance
```sh
git clone git@github.com:<your-username>/<your-repository>.git
```

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

# Verification Activity "Objective Evidence" document template

This is the template for SPHEREx Verification Activity "Objective Evidence" 
document repositories (`TR` document category).
These documents are written in LaTeX and are built around
[`spherex-tex` and the `spherex` document class](https://github.com/SPHEREx/spherex-tex).

## How to create a new document

### 0. Prerequisites

On your computer, ensure that [Cookiecutter](https://cookiecutter.readthedocs.io/en/latest/) is installed:

```shell
pip install -U cookiecutter
```

You also need a recent version of Git.

### 1. Run Cookiecutter

From the directory where you want to create the new document repository, run Cookiecutter:

```shell
cookiecutter gh:SPHEREx/spherex-templates --directory va-objective-evidence
```

On the command line, answer each prompt to configure the document.
In some cases, the default will be correct and you can simply hit return to go to the next prompt.

Keep in mind that the `serial_number` is zero-padded to a length of three characters, for example `001` and not `1`.

### 2. Initialize the Git repository

Move into that directory:

```shell
cd ssdc-tr-<...>
```

Initialize the Git repository:

```shell
git init -b main
git add .
git commit -m "Initialize repo"
```

NB: If your version of `git` is too old to support the `git -b` option, you can do the following instead:

```shell
git init
git checkout -b main
git add .
git commit -m "Initialize repo"
```

### 3. Create the GitHub repository

Now go to GitHub and create a new private repository in the https://github.com/IPAC-SW organization:

- The repository name should be the lower-case version of the handle (the same as the name of the directory created by Cookiecutter in Step 1).
- The repository description should be "SSDC Objective Evidence Report - " followed by the VA title, followed by "(VA dddddd)" where "dddddd" is the DOORS-NG ID for the VA.
- **Do not** add a README, .gitignore, or LICENSE.  The appropriate boilerplate content is all in the template.
- Please remember to make it private.

### 4. Push the local Git repository to GitHub

Back in your shell follow the directions GitHub provides to push your existing repository to to the GitHub repository you just created.
The instructions look like this:

```shell
git remote add origin https://github.com/IPAC-SW/ssdc-tr-<...>.git
git branch -M main
git push -u origin main
```

**The GitHub instructions are customized to the name of your specific repository, so feel free to copy and paste from the GitHub page.**

### 5. Configure the repository on GitHub

Once you've pushed the initial content to GitHub you can begin configuring it:

- From the **About** section on the main page of the repository, click on the :gear: (gear) icon and add the `ssdc-docs` “topic” to the repository.  (This will help us [navigate the many repos](https://github.com/search?q=org%3AIPAC-SW+ssdc-docs&type=repositories) that we’ll have on this organization.)

Let Gregory know at least once a day that you’ve created new repos, and he’ll set the access permissions appropriately to make sure that the whole team has access.

### 6. Check the initial build

About 2–3 minutes after pushing the repository to GitHub, the initial build should be ready.
On the repository's GitHub page, check the build to ensure it worked:

- Check on the **Actions** tab.
- There should be an item in the table corresponding to the name of the initial commit. The :white_check_mark: (green check mark) icon shows that the build completed.
- Click on the title to see the build's page. From this page, you can download the PDF "artifact."

If the build didn't work, ask for help.

Check on the GitHub site for the repository to make sure that the initial “Actions” have completed successfully.  Ask for help if they don’t.

### 7. Add the initial content

If all is well, continue working on on your local repository clone to add the actual document text and any figure files that are needed.

a. Start by creating a branch for this work, e.g. (based on a work ticket),

```shell
git checkout -b SP-nnn
```

b. If you're starting with an existing draft, e.g., from Overleaf, copy over the content from the original document.
Replace any content **between** `\maketitle` and `\bibliography` with the original document's content.
**Do not change the document class and do not remove/replace any of the header material from the template.
Leave the \bibliography{spherex} from the template rather than using the one from the original document.**

[Learn more about the spherex document class and spherex bibliography file.](https://github.com/SPHEREx/spherex-tex)

c. Set the correct current document version number in the `\version{}` macro.
For an existing document, for the initial load into GitHub, *keep the version number as it last appeared on Overleaf
(or elsewhere).*

d. Copy any images from the original document on Overleaf into the new repo.

e. If you'd like, you can compile the document locally.
See the [spherex-tex](https://github.com/SPHEREx/spherex-tex) repository's [README](https://github.com/SPHEREx/spherex-tex/blob/main/README.md) for instructions.

f. Once ready, push this content to GitHub:

```shell
git add .
git commit
git push -u origin SP-nnn
```

The command will provide a URL to create a new Pull Request (PR) based on the branch you just pushed.
Open that URL in a web browser to start creating the PR.
For other ways to create a PR, see the [GitHub documentation](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).

Once you have created the Pull Request, or via the **Actions** tab near the top of the GitHub UI (e.g., https://github.com/IPAC-SW/ssdc-tr-001/actions), you should see a summary of the execution of the automatic LaTeX workflow that runs when you push or make a pull request — green: success, yellow: still in progress, red: failed.
If it failed, you should be able to click through to see the logs and see any errors, e.g., from LaTeX.

If the workflow succeeded, you can click through to it (e.g., https://github.com/IPAC-SW/ssdc-tr-001/actions/runs/) and you should see on the lower half of the page that there’s an “artifact” list which includes a PDF for the document.  The PDF name is the document handle plus the 7-digit “SHA” identifier for the commit from which it was generated.

This is a temporary artifact just associated with the update.
The permanent artifact is created with the [GitHub Release](https://docs.github.com/en/github/administering-a-repository/managing-releases-in-a-repository) workflow.
You can see one here: https://github.com/IPAC-SW/ssdc-tr-001/releases.
The PDF is under “Assets”.

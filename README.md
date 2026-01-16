# Assignment 2

![Assignment 2](https://github.com/PGE383-HPC/assignment2-solution/workflows/.github/workflows/main.yml/badge.svg)

The aim of this assignment is to continue familiarization with git and basic Unix commands. 

## Instructions

 1. In the repository, you will find a directory `files1` with a file `lorem1.txt` inside it. Create a copy of `lorem1.txt` called `lorem2.txt` inside the `files1` directory.

 2. Use `cat` to concatenate `lorem1.txt` and the newly created `lorem2.txt`, redirecting the output to a new file `lorem3.txt` inside the `files1` directory.

 3. Recursively copy `files1` to `files2`.

    Your final directory/file structure for the repository should appear as

    ```
    assignment2/
    ├── .devcontainer
    |   ├── Dockerfile
    |   ├── conda_init.txt
    |   ├── devcontainer.json
    |   └── noop.txt
    ├── .github
    |   ├── CODEOWNERS
    |   └── workflows
    |       ├── main.yml
    |       ├── update-badges.yml
    |       └── update-students-repo.yml
    ├── files1/
    |   ├── lorem1.txt
    |   ├── lorem2.txt
    |   └── lorem3.txt
    ├── files2/
    |   ├── lorem1.txt
    |   ├── lorem2.txt
    |   └── lorem3.txt
    ├── .gitignore
    ├── LICENSE
    ├── README.md
    ├── environment.yml
    └── test.py
    ```

 4. Add the newly created files/directories to your `git` repository, commit, and push the changes to Github for submission.

 ## Testing

If you would like to check to see if your solution is correct, in the Terminal command window run the following command

```bash
julia --project -e "using Pkg; Pkg.test()"
```

The output will indicate which tests passed and/or failed.

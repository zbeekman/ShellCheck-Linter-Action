# ShellCheck-Lint-Action

GitHub Action for linting scripts in the repository with [ShellCheck].

This project uses [ShellCheck] by  ([@koalaman]) to lint your project.

## Example Workflows

### Check Conformance of Pushed Commits with [ShellCheck]

To ensure your repository does not have any potential scripting errors, use the following workflow:

```workflow
workflow "ShellCheck Audit" {
  on = "push"
  resolves = ["ShellCheck-Lint-Action"]
}

action "ShellCheck-Lint-Action" {
  uses = "./ShellCheck-Linter/"
  env = {
    ALWAYS_LINT_ALL_FILES = "true" # current default
  }
}
```

Currently, the `ALWAYS_LINT_ALL_FILES` variable is not implemented. Once it is it will defualt to
`false`. When this is implemented, only files touched and still present in the pushed commit range
will be checked. Once this is implemented, always lint all shell script files, set this to
`true`. (This is the current behavior.) Depending on the size of the repository, this may take quite
some time.

## Future Plans

 - Option to limit linting to changed script files
 - Better integration with the GitHub checks API, maybe?


[ShellCheck]: https://shellcheck.org
[@koalaman]: https://github.com/koalaman

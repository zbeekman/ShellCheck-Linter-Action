workflow "ShellCheck Audit" {
  on = "push"
  resolves = ["ShellCheck-Lint-Action"]
}

action "ShellCheck-Lint-Action" {
  uses = "./"
}

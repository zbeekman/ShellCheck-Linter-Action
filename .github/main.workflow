workflow "ShellCheck Audit" {
  on = "push"
  resolves = ["ShellCheck-Lint-Action"]
}

action "ShellCheck-Lint-Action" {
  uses = "./"
  env = {
      ALWAYS_LINT_ALL_FILES = "true"
  }
}

workflow "EditorConfig Audit" {
  on = "push"
  resolves = ["EditorConfig-Action"]
}

action "EditorConfig-Action" {
  uses = "zbeekman/EditorConfig-Action@master"
  env = {
      ALWAYS_LINT_ALL_FILES = "true"
  }
}

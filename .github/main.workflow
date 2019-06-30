workflow "ShellCheck Audit" {
  on = "push"
  resolves = ["ShellCheck-Lint-Action"]
}

action "ShellCheck-Lint-Action" {
  uses = "./"
}

workflow "EditorConfig Audit" {
  on = "push"
  resolves = ["EditorConfig-Action"]
}

action "EditorConfig-Action" {
  uses = "zbeekman/EditorConfig-Action@master"
}

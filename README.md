<div align="center">

# ShellCheck-Linter-Action


[![action on GH marketplace][marketplace badge]][marketplace] &nbsp;
[![gpg on keybase.io][keybase badge]][keybase] &nbsp;
[![GitHub release][release badge]][latest release] &nbsp;
[![GitHub][LICENSE badge]][LICENSE]

</div>

GitHub Action for linting scripts in the repository with [ShellCheck].

<div align="center">

[![Bender and turtle][bender turtle]][marketplace]

</div>

<details><summary><b>Table of Contents</b></summary>
<p>

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [ShellCheck-Linter-Action](#shellcheck-linter-action)
  - [Example Workflows](#example-workflows)
    - [Check Conformance of Pushed Commits with ShellCheck](#check-conformance-of-pushed-commits-with-shellcheck)
  - [Future Plans](#future-plans)
  - [Other GitHub Action from @zbeekman](#other-github-action-from-zbeekman)

<!-- markdown-toc end -->

</p>
</details>

This project uses [ShellCheck] by Vidar Holen ([@koalaman]) to lint your project.

## Example Workflows

### Check Conformance of Pushed Commits with [ShellCheck]

To ensure your repository does not have any potential scripting errors, use the following workflow:

```workflow
workflow "ShellCheck Audit" {
  on = "push"
  resolves = ["ShellCheck-Linter-Action"]
}

action "ShellCheck-Linter-Action" {
  uses = "zbeekman/ShellCheck-Linter-Action@v1.0.1"
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

## Other GitHub Action from [@zbeekman]

  - https://gtihub.com/marketplace/actions/editorconfig-action

---

<div align="center">

[![star badge][star badge]][star] &nbsp;
[![zbeekman gh profile][gh follow]][gh profile] &nbsp;
[![zbeekman on twitter][twitter badge]][twitter]

</div>

[ShellCheck]: https://www.shellcheck.net
[@koalaman]: https://github.com/koalaman
[@zbeekman]: https://github.com/zbeekman

[bender turtle]: https://media.giphy.com/media/gYZ7qO81g4dt6/giphy.gif
<!--
Badges and local links
-->
[marketplace badge]: https://img.shields.io/badge/GitHub-Marketplace-lightblue.svg
[marketplace]: https://github.com/marketplace/actions/shellcheck-linter-action
[LICENSE badge]: https://img.shields.io/github/license/zbeekman/ShellCheck-Linter-Action.svg
[LICENSE]: https://github.com/zbeekman/ShellCheck-Linter-Action/blob/master/LICENSE
[release badge]: https://img.shields.io/github/release/zbeekman/ShellCheck-Linter-Action.svg
[latest release]: https://github.com/zbeekman/ShellCheck-Linter-Action/releases/latest
[keybase badge]: https://img.shields.io/keybase/pgp/zbeekman.svg
[keybase]: https://keybase.io/zbeekman
[twitter badge]: https://img.shields.io/twitter/follow/zbeekman.svg?style=social
[twitter]: https://twitter.com/intent/follow?screen_name=zbeekman
[star badge]: https://img.shields.io/github/stars/zbeekman/ShellCheck-Linter-Action.svg?style=social
[star]: https://github.com/zbeekman/ShellCheck-Linter-Action
[gh follow]: https://img.shields.io/github/followers/zbeekman.svg?style=social
[gh profile]: https://github.com/zbeekman

export def main [] {
  let extension = ls *.vsix | sort-by modified -r | first | get name | path expand
  code --install-extension $extension
}
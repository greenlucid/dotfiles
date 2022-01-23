#!/bin/bash

pkglist=(
dbaeumer.vscode-eslint
esbenp.prettier-vscode
knisterpeter.vscode-github
starkware.cairo
yzhang.markdown-all-in-one
)

for i in ${pkglist[@]}; do
  code --install-extension $i
done
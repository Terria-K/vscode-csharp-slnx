#!/usr/bin/bash

vscodeExtUrl="https://github.com/muhammadsammy/free-vscode-csharp.git"
vscodeExtName="free-vscode-csharp"

git clone $vscodeExtUrl

cd free-vscode-csharp

git apply ../slnx.patch --ignore-whitespace --recount -3

npm install

npm run vscode:prepublish

npx gulp 'vsix:release:neutral'
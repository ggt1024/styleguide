call npm install prettier --save-dev --save-exact
copy guide-style\.prettierignore .prettierignore
copy guide-style\.prettierrc.json .prettierrc.json
xcopy guide-style\.vscode .vscode\ /y 
call npx mrm@2 lint-staged
call npm install -g @commitlint/cli @commitlint/config-conventional --save-dev
copy guide-style\commitlint.config.js commitlint.config.js
copy guide-style\commit-msg .husky\commit-msg

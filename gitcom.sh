#!/bin/zsh

gint() {
    if [ ! -d ".git" ]; then
        git init
        git branch -m main
        git add .
        git commit -m "init $1"
    else
        echo -e "\n${Red}You already have a git repository here${NC}\n"
    fi
}

gclone() {
    if [ $# -eq 1 ]; then
        cd ~/Github
        git clone $1
        cd "$(basename "$1" .git)"
        echo -e "\n${Blue}You have already been moved to the new project directory${NC}\n"
    else
        echo -e "\n${Red}MUST enter the URL of the repository${NC}"
        echo -e "For example: ${Green}gclone git@github.com:user/yourrepo.git${NC}\n"
    fi
}
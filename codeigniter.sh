#!/bin/zsh

codeigniter() {
    if [ $1 == "new" ]; then
        composer create-project codeigniter4/appstarter ~/Github/$2
        composer update
        cd ~/Github/$2
        git init
        git branch -m main
        git add .
        git commit -m "CodeIgniter project $2 init"
        cp env .env
        echo -e "\n${Green}The project $2 was create with success.${NC}"
        echo -e "${Blue}You have already been moved to the new project directory${NC}\n"
    else
        echo -e "\n${RED}This function only accept the${NC} ${Green}\"new\"${NC} ${Red}paramter${NC}"
        echo -e "E.g: ${Green}codeigniter new my-website${NC}\n"

    fi
}

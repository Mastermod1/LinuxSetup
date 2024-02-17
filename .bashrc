export TERM=xterm-256color

alias gitlog="git log --graph --all --abbrev-commit --decorate"
alias grepp="grep -rwns"
alias difff="diff -W $COLUMNS --suppress-common-lines -y"

function lookfor() {
    find . -type f -iname "*$1*" 2>/dev/null 
}

function replaceAllFullWord(){
    old=$1
    new=$2
    find ./ -type f \( -iname \*.cpp -o -iname \*.hpp \) -exec sed -i "s/\<${old}\>/${new}/g" {} \;
}

function replaceAll(){
    old=$1
    new=$2
    find ./ -type f \( -iname \*.cpp -o -iname \*.hpp \) -exec sed -i "s/${old}/${new}/g" {} \;
}

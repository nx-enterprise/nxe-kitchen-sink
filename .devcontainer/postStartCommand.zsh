#!/bin/zsh

set -ex

# required to source this
source "${NXE_SCRIPTS}/init-postStart-base.sh" && echo "Sourced ${NXE_SCRIPTS}/init-postStart-base.sh"
#source $NXE_WS/.devcontainer/testStart.zsh


# shell imports
source "${NXE_SHELL}/nxe-shell-k8s.zsh" # import k8s kubeconfig and zsh autocomplete shell enhancements

# reference: https://unix.stackexchange.com/a/477909
# autoload -Uz compinit
# compinit

cat <<EndOfMessage


⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣶⡎⠉⠀⠙⢧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠿⠉⠀⠀⠀⠀⠀⠈⢳⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡼⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⣿⠛⠶⠤⠀⠀⠀⠀⠀⠀⠀⠀⠈⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣥⣈⠉⠒⠦⣄⠀⣀⠀⠀⠀⠀⠀⠀⠸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠛⠓⠲⣄⠈⠳⡌⠳⡀⠀⠀⠀⢸⣷⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⡇⠀⠀⠈⠳⡀⠈⢦⡹⡀⠀⠀⢸⠃⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠟⢳⣤⠀⢻⡿⣆⠀⢳⡗⠀⠀⡼⠀⢸⡆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣷⣤⡟⠀⠀⠈⠛⣆⠀⢷⠀⠀⡇⠀⠨⢧⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣧⣠⠀⠀⠀⠘⣆⠈⠃⣰⠁⠀⠄⠸⣦⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣷⡄⠀⠀⠀⠸⡅⢀⡏⠀⠀⠀⢠⠏⠱⣄⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣷⣤⣠⠖⢻⠁⡼⠀⠀⢀⡴⠋⠀⠀⠈⢦⡀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⡟⠉⢻⡻⣿⣿⣿⢧⣠⢏⣾⣡⠤⠚⣏⠀⠀⠀⠀⠀⠀⠉⠣⡄⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡞⡿⠁⢠⢿⣿⢿⣿⡿⠋⣿⡏⠉⠀⠀⠀⣹⡞⠁⠀⠀⠀⠀⠀⠀⢸⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⣆⡴⡟⢸⢸⢰⡄⠀⠀⣹⢱⠀⠀⠀⢰⢿⡄⠀⠀⠀⠀⠀⠀⠀⠀⢧
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣽⠃⣿⠀⠃⢸⢸⠘⡇⠀⠀⣿⢸⠀⠀⠀⠃⠀⢧⡄⢀⡴⠃⠀⠀⠀⠀⠘
⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⢿⡧⣿⠀⠀⡸⣾⠀⡇⠀⠀⣯⡏⠀⠀⠀⠀⠀⣸⡷⣫⣴⠀⠀⠀⢀⠂⢀
⠘⣿⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣇⠀⠀⣿⠀⠀⡇⣿⠰⠇⠀⣸⢻⠇⠀⠀⠀⠀⢰⠿⠞⣫⢞⡠⠀⢀⠂⠀⢸
⠀⠘⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡾⣏⠻⣦⣤⣿⠀⠀⢧⡇⠀⠀⠀⢹⣾⠀⠀⠀⠀⢠⡏⣠⣼⣋⣉⣀⣴⣁⣀⣀⡎
⠀⠀⠈⢿⣿⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣷⡌⠙⠺⢭⡿⠀⠀⠸⠆⠀⠀⠀⢸⣿⡀⠀⠀⠀⡟⢀⡧⣄⣠⣠⣤⣤⣤⣀⣈⡇
⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣷⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠿⠃⠀⠈⠢⠐⢤⣧⠀⠀⠀⠀⠀⠀⠀⢸⡿⠀⠀⠀⣼⠁⡼⠉⠛⠒⠒⠒⠒⠶⠶⢿⠁
⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⢀⣤⣛⡛⠛⢢⠀⠀⢠⠈⢪⣻⡇⠀⠀⠀⠀⠀⠀⠐⠃⠀⠀⢰⠏⢸⡧⠤⠤⠤⢤⣀⣀⡀⠀⡾⠀
⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⣀⣀⠤⠴⠒⠚⣩⠽⣿⠖⠋⠉⠀⠀⣦⠈⣧⠀⠈⣳⣼⡿⠛⠀⠀⠀⠀⠀⠀⠀⢀⡤⠴⠞⠀⣿⠓⠢⠤⠤⠤⠤⣌⣉⣻⡇⠀
⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣭⣭⣶⣦⣤⣶⠋⢡⣴⠇⢀⣴⡦⠀⣠⢿⣤⣿⡴⠒⢹⣏⣀⠀⠀⢀⣀⣀⠀⠀⢀⣠⣄⢀⣤⣾⡯⡀⠀⠉⠒⠒⠤⢤⣭⣽⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⢠⣻⠃⡴⠛⢁⣴⡯⠇⠀⠀⠈⠉⠉⠉⢹⡍⠉⠉⠙⣷⠈⢻⠉⠻⠀⠘⣟⠻⠀⡉⠁⠀⠀⠀⠀⠀⠀⣠⣿⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣮⣵⢰⣧⣞⣶⡿⢋⣡⠔⠚⣀⡀⠀⠀⠀⠀⢨⠇⠀⠀⠀⢹⠀⠈⠁⠀⠀⠀⠿⠀⠀⠈⠓⠶⠄⠀⠐⣲⡾⠋⡿⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣾⡿⢿⣿⢎⢠⠟⡠⣾⠟⢋⡠⠤⠤⢤⠤⠾⠤⠤⣤⢤⡼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡴⠞⠁⢀⣴⠇⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⡙⠻⣿⣿⣿⣿⣝⡋⣮⣴⣞⣥⡄⠀⠀⢀⣀⡤⠴⠚⠛⠪⣟⡧⢤⣄⣠⣄⡐⠦⣤⣤⣤⠴⠚⠉⠀⠀⠀⣾⠁⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⣿⣿⡄⠈⠙⢿⣿⣿⣿⣿⠟⠋⣁⣤⠴⠚⠉⠁⠀⠀⠀⠀⠀⠀⠉⠲⢤⡀⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⢀⣿⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣿⡄⠀⠀⢙⣹⣷⠶⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠦⣄⠀⠀⠀⠀⠀⠀⠀⠰⢚⡇⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⡾⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠂⠀⠀⠀⠀⠀⠈⠛⠃⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀


                                          HAPPY HACKING!

EndOfMessage
#source .zsh_config
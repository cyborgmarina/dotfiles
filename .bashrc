# Docker aliases

## Remove all exited containers
alias docker-clear='docker rm $(docker ps -a -q -f status=exited)'



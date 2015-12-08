# Docker Machine

dm-set() {
	eval "$(docker-machine env $1)"
}

dm-set dev
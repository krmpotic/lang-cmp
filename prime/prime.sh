#!/usr/bin/env sh

N=${1:-100}

isprime() {
	# seq includes last argument in list!
	local r=$(expr $i - 1)
	local i # must! else overwrites other i
	for i in $(seq 2 $r); do
		if [ $(expr $1 % $i) -eq 0 ]; then
			return 1
		fi
	done
	return 0
}

for i in $(seq 2 $(expr $N - 1)); do
	isprime $i && echo -n "$i "
done
echo

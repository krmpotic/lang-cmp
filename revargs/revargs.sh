#!/usr/bin/env sh

n=${#@}
for i in $(seq ${n} -1 1); do
	j=1
	for arg in $@; do
		[ $j -eq $i ] && echo -n "$arg "
		((j++))
	done
done

if [ $n -gt 0 ]; then
	echo
fi

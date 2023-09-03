let N = 100;

function isprime(x) {
	let r = Math.sqrt(x)
	for (let i = 2; i <= r; i++) {
		if ((x % i) === 0) {
			return false;
		}
	}
	return true;
}

s = "";
for (let i = 2; i < N; i++) {
	if (isprime(i)) {
		s += i.toString() + " ";
	}
}

console.log(s);

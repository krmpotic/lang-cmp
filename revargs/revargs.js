args=process.argv
s=""
for (i=args.length-1; i > 1; i--) {
	s += args[i] + " "
}
if (args.length>2) {
	console.log(s)
}

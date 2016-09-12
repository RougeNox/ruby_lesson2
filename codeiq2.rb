@args = []
i = 0
while line = gets
	ary = line.split("/")
	@args[i] = []
	@args[i][0] = ary[0].to_i
	@args[i][1] = ary[1].to_i
	i += 1
	break if i == 2
end
def gcd a,b
	a,b = b,a%b while b > 0
	a
end
def lcm a,b
	l = gcd(a,b) * (a/gcd(a,b))*(b/gcd(a,b))
	l
end 
if @args[0][1] > @args[1][1]
	a = @args[0][1]
	b = @args[1][1]
	c = @args[0][0]
	d = @args[1][0]
else
	@args[0][1] < @args[1][1]
	b = @args[0][1]
	a = @args[1][1]
	d = @args[0][0]
	c = @args[1][0]					#c/a+d/b
end
l = lcm a,b

e = l/a * c 
f = l/b * d 
ans = e + f

if ans > l
	g = gcd(ans,l)
else
	g = gcd(l,ans)
end

ans = ans/g
l = l/g

if l == 1
	print ans
else
	print "#{ans}/#{l}"
end
def bubble_sort ary
	i = 0
	while i < ary.length
		j = ary.length - 1
		while j > i
			if ary[j] < ary[j-1]
				w = ary[j]
				ary[j] = ary[j-1]
				ary[j-1] = w
			end
			if j < i
				break
			end
			j -= 1
		end
		i += 1
	end
	return ary
end
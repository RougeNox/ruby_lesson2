require_relative "./gokei.rb"
require_relative "./tax.rb"
ary = Array.new
num = gets.to_i
	while num != 0
		ary<<num
		num = gets.to_i
	end
kingaku = gokei ary
puts gokei ary
puts tax kingaku
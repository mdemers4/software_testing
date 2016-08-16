def add(first_num, second_num)
	return first_num + second_num
end

def subtract(first_num, second_num)
	return first_num- second_num 
end

def sum(array)
	total = 0
	array.each do |num|
		total += num
	end
	return total
end
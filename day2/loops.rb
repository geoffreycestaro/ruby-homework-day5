# count = 0
# puts "Enter a number to loop."
# count = gets.chomp.to_i
# count.times do
# 	puts "I think I can."
# end


# num = 1
# while num != 7
# 	puts num
# 	num = rand(1..10)
# end
# puts "we have reached #{num}"

# ArrNum = [1,2,4,5]
# ArrNum.each do |x|
# 	puts x
# end

# ArrAnimals = ['sheep','horse','pig','cow','bird']
# puts "what is your fave animal?"

# StrFave = gets.chomp.strip

# if ArrAnimals.include? StrFave
# 	puts "I love them too."
# else
# 	puts "I hate them."
# end

# hash	= {"Civic" => "honda", "Accord" => "Honda", "Passat" => "Volkswagon", "Mustang" => "Ford"}

# puts "What model car are you looking for?"
# model = gets.chomp.capitalize

# found = false

# hash.each do |k,v|
# 	if k == model
# 		puts "You're looking for a #{v}."
# 		found = true
# 	end
# end

# if found == false
# 	puts "sorry :("
# end

# def rev_string(string)
# length = string.length
# 	length.times do
# 		print string[length-1]
# 	end
# end
#  puts rev_string("fart")

# def to_hash(array)
# 	hash = {}

# 	array.each_with_index do |a, i|
# 		hash[i] = a
# end
# return hash
# end

# my_array = ["pizza","Burgers","tacos","pita"]
# my_hash = to_hash(my_array)
# my_hash.each do |k,v|
# 	puts k,v
# end

def remainder(num1, num2)

end

def int_check(num1)

	check = true

	if num1.include? "."
		check = false
		elseif num1.to_i == 0
		check = false
	end

	return check
end

puts "Give me a whole number."

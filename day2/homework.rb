def MetAdd(num1,num2)
	sum = num1.to_f + num2.to_f
	return sum
end

def MetSubtract(num1,num2)
	diff = num1.to_f - num2.to_f
	return diff
end

def MetMultiply(num1,num2)
	prod = num1.to_f * num2.to_f
	return prod
end

def MetDivide(num1,num2)
	prod = num1.to_f / num2.to_f
	return prod
end

puts "Enter two numbers, separated by a space."
VarInput = gets
ArrVar = VarInput.split

puts "Choose an operation: add, subtract, multiply, divide."
VarOper = gets.chomp.downcase

case VarOper
	when "add" then puts MetAdd(ArrVar[0],ArrVar[1])
	when "subtract" then puts MetSubtract(ArrVar[0],ArrVar[1])
	when "multiply" then puts MetMultiply(ArrVar[0],ArrVar[1])
	when "divide" then puts MetDivide(ArrVar[0],ArrVar[1])
	else puts "ERROR"
end

# require 'prime'

# puts "How many prime numbers between 1 and:"
# VarMax = gets.chomp.to_i

# VarCount = 1
# VarPrime = 0

# arr =[]
# push(arr) prime.each(VarCount)

# while VarCount <= VarMax do
# 	if Prime.prime?(VarCount) == true 
# 		VarPrime += 1
# 		VarCount += 1
# 		print VarPrime + ", " + VarCount
# 	end
# end

# puts "There are #{VarPrime} prime number(s) between 1 and #{VarMax}."
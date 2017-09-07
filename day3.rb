# class Person

# 	attr_accessor :name, :age

# 	def initialize(name, age)
# 		@name = name
# 		@age = age
# 	end

# end

# profile = Person.new("Aaron", 34)

# puts profile.name
# puts profile.age


# class User

# 	def initialize(username, email)
# 		@username = username
# 		@email = email
# 	end
# end

# my_user = User.new("gcestaro", "gcestaro2@live.com")


# class Pet

# 	def initalize(name, breed)
# 		@petname = petname
# 		@breed = breed
# 	end
# end

# fluffy = Pet.new("Fluffy", "Dalmation")


# class Product

# 	def initialize(sku, qty)
# 		@sku = sku
# 		@qty = qty
# 	end
# end

# table = Product.new("1234ABC", "2")


class Vehicle

		attr_accessor :make, :madel, :year, :color, :mileage

		def initialize(make, model, year, color, mileage)
			@make = make
			@model = model
			@year = year
			@color = color
			@mileage = mileage
		end

		def mileage_change(amount)
			@mileage += amount
		end

		def color_change(newcolor)
			@color += newcolor
		end

		def warranty
				if @year < 2008 || @mileage > 100000
					puts "No warranty available."
				else 
					puts "You are covered."
				end
		end
end

our_cars = Array.new

my_car = Vehicle.new("Mazda", "Mazda6", 2016, "Red", 9130)
my_car2 = Vehicle.new("VW", "Jetta", 2006, "Blue", 125000)
my_car3 = Vehicle.new("Porsche", "Carrera", 2007, "Gray", 6000)

our_cars.push(my_car)
our_cars.push(my_car2)
our_cars.push(my_car3)

puts our_cars.count

our_cars.each do 
	our_cars.warranty
end

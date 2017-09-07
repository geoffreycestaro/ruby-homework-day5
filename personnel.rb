# Create a class for people.

class People

	attr_accessor :fname, :lname, :role, :location
	attr_reader :ssn

	def initialize(fname,lname,role,location,ssn)
		@fname = fname
		@lname = lname
		@role = role
		@location = location
		@ssn = ssn
	end

	def change_location(new_location)
		@location =! new_location
		puts "The location has been changed to #{new_location}."
	end

end # End class difinition.

def main_menu
	#system "cls"
	puts "Welcome to the personnel record system."
	puts "Please choose an option below:"
	puts "--------------------------------"
	puts "1. Create new employee."
	puts "2. View existing employee."
	puts "3. Exit program."
	
	print "Option: "

	option = gets.chomp.to_i

	case option
		when 1 #Create new employee record.
			create_record
			puts "\n"
			main_menu
		when 2 #View existing record.
			view_record
		when 3 # Exit program.
			puts "Thanks for visiting. Please come again."
		else 
			puts "Invalid selection. Please choose from available options."
			main_menu
	end
end # End main menu.


# Create new personnel record method.

def create_record
	print "First Name: "
	fname = gets.chomp.upcase
	print "Last Name: "
	lname = gets.chomp.upcase
	print "Role: "
	role = gets.chomp.upcase
	print "Social Security Number: "
	ssn = gets.chomp.to_s
	#last4 = ssn.last(4)
	print "Location: "
	location = gets.chomp.upcase
	new_person = People.new(fname,lname,role,location,ssn)
	@personnel.push(new_person)
	
	puts "Account created."
	puts "Name: #{lname}, #{fname}"
	puts "Location: #{location}"
	puts "Role: #{role}"
	#puts "SSN: #{last4}"
end


# Create person view menu.

def view_record
	found = false
	puts "\n"
	print "First Name: "
	fname = gets.chomp.upcase
	print "Last Name: "
	lname = gets.chomp.upcase
	
	@personnel.each do |a|
		if a.fname == fname && a.lname == lname
			found = true
		end
	end

	if found == true
		account_view(fname,lname)
	elsif @count < 3 
		@count += 1
		puts "Account not found. Please try again."
		account_menu
	else
		puts "Too many login attempts. Please contact customer service."
		main_menu
	end
end

def account_view(fname,lname)

	puts "/n"
	puts "Welcome."
	puts "Choose and option:"
	puts "-------------------"
	puts "1. Change location on record."
	puts "2. Back to main menu."

	choice = gets.chomp.to_i

	case choice
		when 1
			print "Enter new location: "
			new_location = gets.chomp.upcase
			@personnel =! People.change_location(new_location)
		when 2
			main_menu
		else
			puts "Invalid entry."
			view_account(name,acct_num)
		end
end


# Main program starts here.
#require "active_support"

@personnel = []
@count = 0

system "cls"
main_menu

# Create a class for accounts.

class Account

	attr_accessor :name, :balance
	attr_reader :acct_num

	def initialize(name,acct_num,balance)
		@name = name
		@acct_num = acct_num
		@balance = balance
	end

	def add_funds(amount)
		@balance += amount
		puts "Your deposit has been processed. Your new balance is #{@balance}."
	end

	def withdraw_funds(amount)
		if @balance < amount
			puts "Insufficient funds. You current balance is #{@balance}."
		else @balance -= amount
			puts "Your withdrawal has been processed. You new balance is #{@balance}."
		end
	end

end # End class difinition.


# Create Main menu method.

def main_menu
	#system "cls"
	puts "Welcome to the Bank Of Cestaros."
	puts "Please choose an option below:"
	puts "--------------------------------"
	puts "1. Create new account."
	puts "2. View account."
	puts "3. Exit program."
	
	print "Option: "

	option = gets.chomp.to_i

	case option
		when 1 #Create new account.
			create_account
			puts "\n"
			main_menu
		when 2 #View existing account.
			account_menu
		when 3 # Exit program.
			puts "Thanks for visiting the Bank of Cestaros. Please come again."
		else 
			puts "Invalid selection. Please choose from available options."
			main_menu
	end
end # End main menu.


# Create new account method.

def create_account
	print "Name: "
	name = gets.chomp.upcase
	print "Enter a starting balance: "
	balance = gets.chomp.to_f
	acct_num = @accounts.length + 1
	new_account = Account.new(name,acct_num,balance)
	@accounts.push(new_account)
	puts "Account created."
	puts "Name: #{name}"
	puts "Account number: #{acct_num}"
	puts "Balance: #{balance}"
end


# Create account view menu.

def account_menu
	found = false
	puts "\n"
	puts "Account menu. Please log in to view."
	print "Name: "
	name = gets.chomp.upcase
	print "Account number: "
	acct_num = gets.chomp.to_i

	@accounts.each do |a|
		if a.name == name && a.acct_num == acct_num
			found = true
		end
	end

	if found == true
		account_view(name,acct_num)
	elsif @count < 3 
		@count += 1
		puts "Account not found. Please try again."
		account_menu
	else
		puts "Too many login attempts. Please contact customer service."
		main_menu
	end
end

def view_account(name,acct_num)

	puts "/n"
	puts "Welcome."
	puts "Choose and option:"
	puts "-------------------"
	puts "1. View balance."
	puts "2. Make deposit."
	puts "3. Make withdrawal."
	puts "4. Back to main menu."

	choice = gets.chomp.to_i

	case choice
		when 1
			#view_balance(name,acct_num)
		when 2
			#make_deposit(name,acct_num)
		when 3
			#make_withdrawal(name,acct_num)
		when 4
			main_menu
		else
			puts "Invalid entry."
			view_account(name,acct_num)
		end
end

def view_balance

end


# Main program starts here.

@accounts = []
@count = 0

system "cls"
main_menu

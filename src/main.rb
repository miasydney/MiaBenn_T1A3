# gem requirements
require 'tty-prompt'
prompt = TTY::Prompt.new
require 'colorize'
require 'colorized_string'
require 'rainbow'
require 'json'

# other files of app containing key methods
require_relative 'banner'
require_relative 'timer.rb'

# display opening screen
# display_banner
# # checks if they are a new user
# new_user = prompt.yes?(Rainbow('Are you a new user?').skyblue)
# if new_user == true
#   puts "Welcome!"
# else
#   puts 'Welcome Back!'
# end

# simulate new page
# sleep 2
# puts "\n" * 35

# City class
class City
    # attr_accessor :cityarray
    # allows you to pass in initial city value on creation
    def initialize(cityarray)
        @cityarray = cityarray
    end

    def display_city
        @cityarray.each do |item|
        print item
        end
    end

    def add_house
        @cityarray << " 🏡🌳"
    end

    def add_hotel
        @cityarray << " 🌳🏩🌳"
    end
end

# coins class
class Coins
    # initialise class with an amount of coins
    def initialize(amount)
        @amount = amount
    end
    def add_coins(amount)
        @amount += amount
    end
    def subtract_coins(amount)
        @amount -= amount
    end
    def show_balance
        puts @amount.to_s
    end
end


city = City.new([])
# city.display_city

# initial coins balance
coins = Coins.new(3)

# main menu
user_wants_to_continue = true
    while user_wants_to_continue == true
    puts "\n" * 35
    puts "MY CITY: "
    puts "#{city.display_city}"
    puts "COINS: "
    puts "#{coins.show_balance}"
    
    answer = prompt.select('What would you like to do?', ['A. Buy a house for 500 coins', 'B. Buy a hotel for 1000 coins','C. Start studying to make more coins', 'D. Exit'])
    case answer
    when 'A. Buy a house for 500 coins'
        puts 'Adding new house to your city!'
        sleep 1
        city.add_house
        coins.add_coins(30)
    when 'B. Buy a hotel for 1000 coins'
        puts 'Adding new hotel to your city!'
        sleep 1
        city.add_hotel
        coins_balance -= 1000
    when 'C. Start studying to make more coins'
        puts "Bringing up timer"
        sleep 2

    # timer menu
        answer = prompt.select("How long is your study block?", 
        ["A. 15 min", "B. 30 min", "C. 45 min", "D. 1hr"])
        case answer
        when "A. 15 min"
            puts "Starting 15 min study block"
            timer(15, 250)
            coins_balance += 250
        when "B. 30 min"
            puts "Starting 30 min study block"
            timer(30, 500)
            coins_balance += 500
        when "C. 45 min"
            puts "Starting 45 min study block"
            timer(45, 750)
            coins_balance += 750
        when "D. 1hr"
            puts "Starting 1 hour study block"
            timer(40, 1000)
            coins_balance += 1000
        else
            puts "Invalid input"
        end
    when 'D. Exit'
    user_wants_to_continue = false
    puts "Bye! See you next time!"
    else
        puts 'Invalid input'
    end
end

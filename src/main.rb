# gem requirements
require 'tty-prompt'
prompt = TTY::Prompt.new
require 'colorize'
require 'colorized_string'
require 'rainbow'
require 'json'

# other files of app containing key methods
require_relative 'banner'

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
    attr_accessor :cityarray
    #allows you to pass in initial city value on creation
    def initialize
        @cityarray = []
    end
    def add_house
        @cityarray << " 🏡🌳"
    end
    def add_hotel
        @cityarray << " 🌳🏩🌳"
    end
    def display_city
        @cityarray.each do |item|
        print item
    end
    end
end

puts "hello"
city = City.new
city.add_house
city.add_hotel
city.display_city

# Coins class
# class Coins
#     attr_accessor :coinsbalance
#     def initialize(coinsbalance)
#         @coinsbalance = coinsbalance
#     end
#     def add_coins(amount)
#         coinsbalance += amount
#     end
# end

# main menu
# user_wants_to_continue = true
#     while user_wants_to_continue == true
#     puts "\n" * 35
#     puts "City:"
#     puts "Coins:"

#     answer = prompt.select('What would you like to do?', ['A. Buy a house for 500 coins', 'B. Buy a hotel for 1000 coins','C. Start studying to make more coins', 'D. Exit'])
#     case answer
#     when 'A. Buy a house for 500 coins'
#         puts 'Adding new house to your city!'
#     when 'B. Buy a hotel for 1000 coins'
#         puts 'Adding new hotel to your city!'
#     when 'C. Start studying to make more coins'
#         puts "Bringing up timer"
#     when 'D. Exit'
#         user_wants_to_continue = false
#     else
#         puts 'Invalid input'
#     end
# end

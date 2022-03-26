# the app
require_relative 'timer'
require_relative 'city'
require_relative 'wallet'
require_relative 'banner'

# gem things
require 'tty-prompt'
require 'colorize'
require 'colorized_string'
prompt = TTY::Prompt.new
require 'rainbow'

# display opening screen
display_banner

# data = File.read('src/users.json')

require 'json'
# checks if they are a new user
new_user = prompt.yes?('Are you a new user?'.colorize(:light_cyan))

if new_user == true
  puts "Let's create an account!"
  # sign up
  # what do you want your new username to be?
  username = prompt.ask('Please enter your new username:  '.colorize(:light_cyan))

  # please enter your password
  password = prompt.mask('Please enter your new password:  '.colorize(:light_cyan))

# add username and password as a new hash to the JSON array of hashes

else
  puts 'Welcome Back!'
  # enter your username
  usernameentry = prompt.ask('Enter your username'.colorize(:light_cyan))

  passwordentry = prompt.mask('Please enter your password'.colorize(:light_cyan))
  # enter your password
  # iterate over list to see if there is a matching usernameentry and passwordentry in one of the hashes in JSON file
  # make that hash be the same hash that I get the city from and update the city with
end

puts 'Success! You are logged in'.colorize(:light_cyan)
sleep 2

puts "\n" * 35


def display_city
puts Rainbow("   MY CITY: \n").pink.bold
# print city from user city value in JSON file
parsed = JSON.load_file('src/users.json', symbolize_names: true)
puts parsed[0][:city]
puts "_ _ _ 🚗 _ _ _\n"
puts Rainbow("\n \n START A STUDY BLOCK NOW\n TO EARN MORE ITEMS AND\n POPULATE YOUR CITY. \n\n\n").pink.bold
end

display_city

# intial prompt for user to see if they want to continue
continue = prompt.yes?('Enter Y to continue or N to finish studying and exit the program'.colorize(:light_cyan))

while continue == true
# goes through timer menu options, completes study block and adds new item to city
display_city
timer_menu
# simulates a 'new page' after timer menu is completed and new item is being added
sleep 4
puts "\n" * 35
display_city
continue = prompt.yes?('Enter Y to continue or N to finish studying and exit the program'.colorize(:light_cyan))
end

# when continue != true, the program will end
puts Rainbow('Bye! See you next time!').skyblue
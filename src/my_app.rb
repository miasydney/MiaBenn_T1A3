# other files of app containing key methods
require_relative 'timer'
require_relative 'city'
require_relative 'wallet'
require_relative 'banner'
require_relative 'mainmenu'

# gem requirements
require 'tty-prompt'
prompt = TTY::Prompt.new
require 'colorize'
require 'colorized_string'
require 'rainbow'
require 'json'


# display opening screen
display_banner

# checks if they are a new user
new_user = prompt.yes?(Rainbow('Are you a new user?').skyblue)
if new_user == true
  puts "Welcome!"
else
  puts 'Welcome Back!'
end

# simulate new page
sleep 2
puts "\n" * 35

parsed = JSON.load_file('src/users.json', symbolize_names: true)
$coins = parsed[1][:coins]
$city = parsed[0][:city]

def display_city
  puts Rainbow(" MY CITY: \n").pink.bold
  # print city from user city value in JSON file
  parsed = JSON.load_file('src/users.json', symbolize_names: true)
  $city.each do |item|
    print item
  end


  puts "\n _ _ _ 🚗 _ _ _ _ 🚗 _ _ _\n"
  # prints user coins amount from coins value in JSON
  puts Rainbow("\n \n WALLET: #{$coins.to_s} coins").pink

  puts Rainbow("\n \n START A STUDY BLOCK NOW\n TO EARN MORE COINS\n AND POPULATE YOUR CITY. \n\n").pink.bold
end

# displays city initially
puts Rainbow(" welcome to your city! \n \n \n").skyblue.bold
display_city

# intial prompt for user to see if they want to continue
continue = prompt.yes?(Rainbow('Enter Y to continue or N to finish studying and exit the program').skyblue)
puts "\n" * 35

while continue == true
  # goes through timer menu options, completes study block and adds new item to city
  display_city
  # add step of prompting if they want to buy a house
  mainmenu 
  # simulates a 'new page' after selection has been made from new menu
  sleep 1
  puts "\n" * 35

  display_city
  # repeatedly prompts user if they want to continue after each cycle of main menu and/or timer.
  continue = prompt.yes?(Rainbow('Enter Y to continue or N to finish studying and exit the program').skyblue)
  puts "\n" * 35
end

# when continue != true, the program will end
File.write('src/users.json', JSON.generate(parsed))

puts Rainbow('Bye! See you next time!').skyblue

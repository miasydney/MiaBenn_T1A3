# the app
require_relative 'timer.rb'
require_relative 'city'
require_relative 'wallet'

# gem things
require 'tty-prompt'
require 'colorize'
require 'colorized_string'
prompt = TTY::Prompt.new
require 'rainbow'

puts Rainbow("  \n \n                       WELCOME TO \n \n").pink.bold

puts Rainbow("███╗   ███╗██╗███╗   ██╗██╗     ██████╗██╗████████╗██╗   ██╗
████╗ ████║██║████╗  ██║██║    ██╔════╝██║╚══██╔══╝╚██╗ ██╔╝
██╔████╔██║██║██╔██╗ ██║██║    ██║     ██║   ██║    ╚████╔╝
██║╚██╔╝██║██║██║╚██╗██║██║    ██║     ██║   ██║     ╚██╔╝
██║ ╚═╝ ██║██║██║ ╚████║██║    ╚██████╗██║   ██║      ██║
╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝     ╚═════╝╚═╝   ╚═╝      ╚═╝
                                                           ").skyblue.blink
puts Rainbow("                    PRODUCTIVITY TIMER \n").pink.bold
puts Rainbow('_ _ _ _ 🚗 _ _ _ _ 🚗 _ _ _ _ 🚗 _ _ _ _ 🚗 _ _ _ _ 🚗 _ _').pink
puts "\n" * 3
puts Rainbow('     COMPLETE STUDY BLOCKS AND POPULATE YOUR CITY').skyblue.bold
puts "\n" * 5

# data = File.read('src/users.json')


    require 'json'
# checks if they are a new user
new_user = prompt.yes?('Are you a new user?'.colorize(:light_cyan))

if new_user == true
  puts 'this is a new user'
  # sign up
# what do you want your new username to be?
username = prompt.ask("Please enter your new username:  ".colorize(:light_cyan))

# please enter your password
password = prompt.mask("Please enter your new password:  ".colorize(:light_cyan))

# add username and password as a new hash to the JSON array of hashes

else
  puts 'this is an existing user'
  # enter your username
  usernameentry = prompt.ask("Enter your username").colorize(:light_cyan)

  passwordentry = prompt.mask("Please enter your password").colorize(:light_cyan)
  # enter your password
  #iterate over list to see if there is a matching usernameentry and passwordentry in one of the hashes in JSON file
 # make that hash be the same hash that I get the city from and update the city with
end

puts "Success! You are logged in".colorize(:light_cyan)
sleep 2

puts "\n" * 35
# you are logged in 
# print city from user city value in JSON file

puts Rainbow("   MY CITY: \n").pink.bold
puts " 🏡 🌳 🏩 🌳 🌳  "
puts "_ _ _ 🚗 _ _ _\n"
puts Rainbow("\n \n START A STUDY BLOCK NOW\n TO EARN MORE ITEMS\n AND POPULATE YOUR CITY. \n\n\n").pink.bold

timer_menu

puts "\n" * 35

# writes the new data into the JSON file (you should do this at the end of the program)

File.write('src/users.json', JSON.pretty_generate(parsed))

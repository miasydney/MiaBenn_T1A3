# the app
require_relative 'timer'
require_relative 'city'
require_relative 'wallet'

# gem things
require 'tty-prompt'
require 'colorize'
require 'colorized_string'
prompt = TTY::Prompt.new
require 'rainbow'

puts Rainbow("                       WELCOME TO \n \n").pink.bold

puts Rainbow("███╗   ███╗██╗███╗   ██╗██╗     ██████╗██╗████████╗██╗   ██╗
████╗ ████║██║████╗  ██║██║    ██╔════╝██║╚══██╔══╝╚██╗ ██╔╝
██╔████╔██║██║██╔██╗ ██║██║    ██║     ██║   ██║    ╚████╔╝
██║╚██╔╝██║██║██║╚██╗██║██║    ██║     ██║   ██║     ╚██╔╝
██║ ╚═╝ ██║██║██║ ╚████║██║    ╚██████╗██║   ██║      ██║
╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝     ╚═════╝╚═╝   ╚═╝      ╚═╝
                                                           ").skyblue.blink
puts '_ _ _ _ 🚗 _ _ _ _ 🚗 _ _ _ _ 🚗 _ _ _ _ 🚗 _ _ _ _ 🚗 _ _'
puts "\n" * 10

require 'json'

# data = File.read('src/users.json')

parsed = JSON.load_file('src/users.json', symbolize_names: true)

parsed[0][:city] << "🏩"

File.write('src/users.json', JSON.generate(parsed))

# checks if they are a new user
new_user = prompt.yes?('Are you a new user?'.colorize(:light_cyan))

if new_user == true
  puts 'this is a new user'
  # sign up
# what do you want your new username to be?
username = prompt.ask("What do you want your username to be?").colorize(:light_cyan)

# please enter your password
password = prompt.mask("Please enter your new password").colorize(:light_cyan)

# add username and password to the JSON array of hashes (its called users)

# please confirm password
else
  puts 'this is an existing user'
  # enter your username
  puts 'enter your username'
  usernameentry = gets.chomp
  puts 'enter your password'
  passwordentry = gets.chomp 
  # enter your password

end

end

# print city

# writes the new data into the JSON file (you should do this at the end of the program)
File.write('src/users.json', JSON.pretty_generate(parsed))

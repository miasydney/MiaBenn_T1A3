# the app
require_relative 'timer.rb'
require_relative 'city.rb'
require_relative 'wallet.rb'

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

puts "\n" * 10                                                         

# checks if they are a new user
new_user = prompt.yes?("Are you a new user?".colorize(:light_cyan))

if new_user == true
    puts "this is a new user"
    # sign up
    # what do you want your new username to be?
    # please enter your password
else
    puts "this is not a new user"
end

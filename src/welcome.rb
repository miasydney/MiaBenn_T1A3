require 'rainbow'
require_relative '../src/errors.rb'

module Intro
def self.display_banner
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
end

def self.user_details
prompt = TTY::Prompt.new
new_user = prompt.yes?(Rainbow('Are you a new user?').skyblue)
if new_user == true
  puts "Welcome!"
else
  puts 'Welcome Back!'
end


end
end
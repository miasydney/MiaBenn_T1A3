# require 'colorize'
# require 'colorized_string'
require 'rainbow'

def display_banner
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

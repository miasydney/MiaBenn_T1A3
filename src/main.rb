# gem requirements + set up
require 'tty-prompt'
prompt = TTY::Prompt.new
require 'colorize'
require 'colorized_string'
require 'rainbow'
require 'json'
require 'rspec'

# other files of app containing key methods
require_relative 'welcome.rb'
require_relative 'timer.rb'
require_relative 'classes.rb'

#ARGV arguments here for -h and --help, -a and --about

# MAIN PROGRAM.

# display opening screen
Intro.display_banner
# check if they are a new user
Intro.user_details
begin
puts "What is your name?"
name = gets.chomp.upcase
rescue NoInputError => e
  puts e.message
  sleep 1
  system('clear')

end

# # simulate new page effect
sleep 2
puts "\n" * 35


# # instantiate new city
city = City.new([])

# # instantiate new coins
coins = Coins.new(100)

# # main menu
continue = true
    while continue == true
    
    # display city + coins
    puts "\n" * 35
    puts "#{name}'S CITY: \n"
    city.display_city
      puts "\n _ _ _ 🚗 _ _ _ _ 🚗 _ _ _\n"
    puts "\n" * 3
    puts "COINS:"
    coins.show_balance
    puts Rainbow("\n \n START A STUDY BLOCK NOW\n TO EARN MORE COINS\n AND POPULATE YOUR CITY. \n\n").pink.bold
    
    
    # main menu selections
    answer = prompt.select('What would you like to do?', ['A. Buy a house for 500 coins', 'B. Buy a hotel for 1000 coins','C. Start studying to make more coins', 'D. Finish studying and exit the program'])
    case answer
    when 'A. Buy a house for 500 coins'
        if coins.amount >= 500
        puts 'Adding new house to your city!'
        sleep 2
        city.add_house
        coins.subtract(500)
        else
          puts 'Insufficient funds! Start a study block to earn more coins'
          sleep(2)
        end

    when 'B. Buy a hotel for 1000 coins'
      if coins.amount >= 1000
        city.add_hotel
        coins.subtract(1000)
        puts 'Adding new hotel to your city!'
      else
        puts 'Insufficient funds! Start a study block to earn more coins'
      end
      sleep(2)
    when 'C. Start studying to make more coins'

       # timer menu
      answer = prompt.select('How long is your study block?', ['A. 15 min', 'B. 30 min', 'C. 45 min', 'D. 1hr'])
      case answer
      when 'A. 15 min'
        puts 'Starting 15 min study block'
        timer(15, 250)
        coins.add(250)
      when 'B. 30 min'
        puts 'Starting 30 min study block'
        timer(30, 500)
        coins.add(500)
      when 'C. 45 min'
        puts 'Starting 45 min study block'
        timer(45, 750)
        coins.add(750)
      when 'D. 1hr'
        puts 'Starting 1 hour study block'
        timer(40, 1000)
        coins.add(1000)
      else
        puts 'Invalid input'
      end
    when 'D. Finish studying and exit the program'
      continue = false
      puts Rainbow("Bye #{name.downcase}! See you next time!").skyblue
    else
      puts 'Invalid input'
    end
end
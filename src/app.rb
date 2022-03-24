# the app
require_relative 'timer.rb'
require_relative 'city.rb'
require_relative 'wallet.rb'

# gem things
require 'tty-prompt'
require 'colorize'
require 'colorized_string'
prompt = TTY::Prompt.new

# welcome page
# mini city
puts 'WELCOME TO'.colorize(:light_blue)
puts ColorizedString['MINI CITY'].blue.blink

# mini coins: coins balance

city = []
puts "my city :\n 🌳🏡🌳" + city.to_s
coins_balance = 0
puts "wallet: " + coins_balance.to_s
# what would you like to do?
answer = prompt.select('What would you like to do?'.colorize(:light_blue), ['A. Buy a house for 500 coins', 'B. Buy a hotel for 1000 coins','C. Start studying to make more coins'])
case answer
when 'A. Buy a house for 500 coins'
  if coins_balance >= 500
    city << '🏡'
    coins_balance -= 500
    show_status
  else
    puts 'not enough funds'
    # return to home page
  end
when 'B. Buy a hotel for 1000 coins'
  if coins_balance >= 1000
    city << '🏩'
    coins_balance -= 1000
  else
    puts 'not enough funds'
    # return to home page
  end
when 'C. Start studying to make more coins'
  timer_menu
#   countdown
else
  puts 'something weird happened'
end

puts city
puts coins_balance
# end

# timer. timer starts. cancel timer and forfeit coins? are you sure? y/n
# timer done! adding X coins to your mini coins balance.
# back to home.

# the app
require_relative 'timer.rb'
require_relative 'city.rb'

# gem thinds
require 'tty-prompt'
require 'colorize'
prompt = TTY::Prompt.new

# welcome page
# mini city
puts 'WELCOME TO'.colorize(:light_blue)
puts 'mini city'.colorize(:light_blue)

# puts "\n" * 35
# mini coins: coins balance
city = Array.new
coins_balance = 0
puts 'mini coins : ' + coins_balance.to_s
puts "my city :\n" + city.to_s

# what would you like to do?
    answer = prompt.select("What would you like to do?".colorize(:light_blue), 
        ["A. Buy a house for 500 coins", 
            "B. Buy a hotel for 1000 coins", 
            "C. Start studying to make more coins"])
    case answer 
    when "A. Buy a house for 500 coins"
        if coins_balance >= 500
            city << "🏡"
            coins_balance -= 500
        else
            puts "not enough funds"
            # return to home page
        end
    when "B. Buy a hotel for 1000 coins"
        if coins_balance >= 1000
            city << "🏩"
            coins_balance -= 1000
        else
            puts "not enough funds"
            # return to home page
        end
    when "C. Start studying to make more coins"
        timer_menu
        countdown
    else
        puts "you didnt select A"
    end

    puts city
    puts coins_balance
# main_menu_page

# option A
# reduce coins balance by 500,000
# and add a house to the list
# if coins balance is < 500,000, puts 'insufficient funds for a house'
# goes back to main menu

# Option B
# reduce coins balance by 1,000,000
# and add a hotel to the list
# if coins balance is < 1m, puts 'insufficient funds for a hotel'
# goes back to main menu

# option C
# prompt.select("How long is your study block?", %w(A.15min B.30min C.45min D.1hr))

# how long is your study block?
# A. 15 min - 150,000
# B. 30 min - 300,000
# C. 45 min - 450,000
# D. 1h - 600,000
# are you sure you want to start studying for X to make X coins?

# timer. timer starts. cancel timer and forfeit coins? are you sure? y/n
# timer done! adding X coins to your mini coins balance.
# back to home.

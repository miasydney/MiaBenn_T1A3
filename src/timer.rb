# file with methods to select timer amount, run timer, exit timer and add to city if study is completed
require 'timeout'
require 'rainbow'
require 'tty-prompt'
prompt = TTY::Prompt.new

# require_relative 'main.rb'

# method for timer. calculated in seconds
def timer(seconds=0, amount)
  while seconds.positive?
  sleep 1
  seconds -= 1
  t = seconds
  min, sec = t / 60, t % 60
  printf "\r%02d:%02d".colorize(:light_cyan), min, sec
  end
  puts "\n Well Done! Adding #{amount} more coins to your wallet..."
  sleep 2
end

# method to bring up timer menu with different time block options
# def timer_menu
#         # parsed = JSON.load_file('src/users.json', symbolize_names: true)
#         prompt = TTY::Prompt.new
#         answer = prompt.select("How long is your study block?", 
#         ["A. 15 min", "B. 30 min", "C. 45 min", "D. 1hr"])
#         case answer
#         when "A. 15 min"
#             puts "Starting 15 min study block"
#             timer(15)
#             coins_balance += 250
#         when "B. 30 min"
#             puts "Starting 30 min study block"
#             timer(30)
#             coins_balance += 500
#         when "C. 45 min"
#             puts "Starting 45 min study block"
#             timer(45)
#             coins_balance += 750
#         when "D. 1hr"
#             puts "Starting 1 hour study block"
#             timer(40)
#             coins_balance += 1000
#         else
#             puts "Invalid input"
#         end
#         # File.write('src/users.json', JSON.generate(parsed))
# end

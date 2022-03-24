# file with methods to select timer amount, run timer, exit timer and add to city if study is completed
require_relative 'city.rb'

# require 'timer'
# timer = Timer.new(:title => "My Timer")
# timer.time("The block has finished executing!") do
# start_time = Time.now
# seconds = 1 * 60
# end_time = start_time + seconds

# while Time.now < end_time
# puts Time.now
#   sleep 1
# end
# end

require 'tty-prompt'
prompt = TTY::Prompt.new

coins_balance = 0

def timer_menu
        prompt = TTY::Prompt.new
        answer = prompt.select("How long is your study block?", 
        ["A. 15 min", "B. 30 min", "C. 45 min", "D. 1hr"])
        case answer
        when "A. 15 min"
            puts "starting 15 min timer"
            # counts down for 15 min
            coins_balance += 500
        when "B. 30 min"
            puts "you selected 30 min"
            # counts down for 30 min
        when "C. 45 min"
            puts "you selected 45 min"
            # counts down for 45 min
        when "D. 1hr"
            puts "you selected 1 hour"
            # counts down for 1hr
        else
            puts "you didnt select 15 min"
        end
end


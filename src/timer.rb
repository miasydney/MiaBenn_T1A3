# file with methods to select timer amount, run timer, exit timer and add to city if study is completed
require_relative 'city.rb'

require 'tty-prompt'
prompt = TTY::Prompt.new

def timer_menu
        prompt = TTY::Prompt.new
        answer = prompt.select("How long is your study block?", 
        ["A. 15 min", "B. 30 min", "C. 45 min", "D. 1hr"])
        case answer
        when "A. 15 min"
            puts "you selected 15 min"
        when "B. 30 min"
            puts "you selected 30 min"
        when "C. 45 min"
            puts "you selected 45 min"
        when "D. 1hr"
            puts "you selected 1 hour"
        else
            puts "you didnt select 15 min"
        end
end

def countdown

puts welcome_message
minutes = gets.chomp.to_i

start_time = Time.now
seconds = minutes * 60
end_time = start_time + seconds

while Time.now < end_time
puts Time.now
  sleep 1
end

puts "Time is up."
end


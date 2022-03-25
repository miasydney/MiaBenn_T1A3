# file with methods to select timer amount, run timer, exit timer and add to city if study is completed

require 'timeout'
require 'rainbow'

# method for timer. calculated in seconds
def timer(s=0)
while s > 0
sleep 1

s = s - 1

t = s
min, sec = t/60, t%60
printf "\r%02d:%02d", min, sec
end
puts "\n well done! adding new item to your city"
end


# BELOW HERE UNCOMMENT!
require 'tty-prompt'
prompt = TTY::Prompt.new

def timer_menu
        prompt = TTY::Prompt.new
        answer = prompt.select("How long is your study block?", 
        ["A. 15 min", "B. 30 min", "C. 45 min", "D. 1hr"])
        case answer
        when "A. 15 min"
            puts "Starting 15 min study block"
            timer(15)
            # adds plant to their city
        when "B. 30 min"
            puts "Starting 30 min study block"
            timer(30)
        when "C. 45 min"
            puts "Starting 45 min study block"
            timer(40)
        when "D. 1hr"
            puts "Starting 1 hour study block"
            timer(40)
        else
            puts "Invalid selection was made"
        end
end

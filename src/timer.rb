# file with methods to select timer amount, run timer, exit timer and add to city if study is completed

require 'timeout'
require 'rainbow'
require 'tty-prompt'
prompt = TTY::Prompt.new

# method for timer. calculated in seconds, pass them in as a parameter
def timer(s=0)
while s > 0
sleep 1

s = s - 1

t = s
min, sec = t/60, t%60
printf "\r%02d:%02d".colorize(:light_cyan), min, sec
end
puts "\n Well Done! Adding new item to your city..."
end

# method to bring up timer menu with different time block options
def timer_menu
        parsed = JSON.load_file('src/users.json', symbolize_names: true)
        prompt = TTY::Prompt.new
        answer = prompt.select("How long is your study block?", 
        ["A. 15 min", "B. 30 min", "C. 45 min", "D. 1hr"])
        case answer
        when "A. 15 min"
            puts "Starting 15 min study block"
            timer(15)
            # adds house to their city
            # parsed[0][:city] << " 🌳 "
            $coins += 5
        when "B. 30 min"
            puts "Starting 30 min study block"
            timer(30)
            parsed[0][:city] << " 🏡 "
        when "C. 45 min"
            puts "Starting 45 min study block"
            timer(45)
        when "D. 1hr"
            puts "Starting 1 hour study block"
            timer(40)
        else
            # user_wants_to_continue == false
        end
        File.write('src/users.json', JSON.generate(parsed))
end

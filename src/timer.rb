# file with methods to select timer amount, run timer, notify user of how many coins will be added upon completion
require 'timeout'
require 'rainbow'
# require 'tty-prompt'
# prompt = TTY::Prompt.new

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
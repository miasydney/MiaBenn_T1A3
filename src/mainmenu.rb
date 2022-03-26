
def mainmenu
prompt = TTY::Prompt.new
answer = prompt.select('What would you like to do?'.colorize(:light_blue), ['A. Buy a house for 500 coins', 'B. Buy a hotel for 1000 coins','C. Start studying to make more coins'])
case answer
when 'A. Buy a house for 500 coins'
  if $coins >= 500
    $city << " 🏡🌴"
    $coins -= 500
    puts 'Adding new house to your city!'
  else
    puts 'Not enough funds. Start study block to earn more coins.'
    # return to home page
  end
when 'B. Buy a hotel for 1000 coins'
  if $coins >= 1000
    $city << ' 🌳🏩🌳'
    $coins -= 1000
    puts 'Adding new hotel to your city!'
  else
    puts 'Not enough funds. Start a study block to earn more coins.'
    # return to home page
  end
when 'C. Start studying to make more coins'
  timer_menu
#   countdown
else
  puts 'something weird happened'
end
end
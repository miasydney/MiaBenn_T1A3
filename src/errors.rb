# created some basic error classes for use if necessary
# no input error if user leaves input field empty
class NoInputError < StandardError
  def message
    puts 'Name must not be empty'
  end
end

# invalid name error
class InvalidNameError < StandardError
  def message
    puts 'Names must only include A-Z characters. Please re-enter a name.'
  end
end
class NoInputError < StandardError
    def message
    puts "Name must not be empty"
    end
end

class InvalidNameError < StandardError
    def message
        puts "Names must only include A-Z characters. Please re-enter a name."
    end
end
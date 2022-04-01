class NoInputError < StandardError
    def message
        puts "Please enter a name!"
    end
end

class InvalidNameError < StandardError
    def message
        puts "Names must only include A-Z characters. Please re-enter a name."
    end
end
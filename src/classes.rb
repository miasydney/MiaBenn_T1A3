

# City class
class City
    attr_accessor :cityarray
    # allows you to pass in initial city value on creation
    def initialize(cityarray)
        @cityarray = cityarray
    end

    def display_city
        @cityarray.each do |item|
        print item
        end
    end

    def add_house
        @cityarray << " 🏡🌳"
    end

    def add_hotel
        @cityarray << " 🌳🏩🌳"
    end
end

# coins class
class Coins
  # initialise class with an amount of coins
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def add(amount)
    @amount += amount
  end

  def subtract(amount)
    @amount -= amount
  end

  def show_balance
    puts @amount.to_s
  end
end

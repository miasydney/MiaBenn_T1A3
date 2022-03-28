require_relative '../src/main.rb'

# city class
describe City do 
    it 'should create the initial array of houses and hotels' do
        cityarray = []
        city = City.new
        expect(city).to eq(city)
    end
    it 'should be able to add a house' do
        city.add_house
        expect(city.add_house).to eq(city)
    end
end

# describe Coins do
#     it 'should be able to add coins' do
#     coins = Coins.new
#     coins.add_coins(amount). to eq(amount)
#     end
# end

# class City
#     attr_accessor :cityarray
#     #allows you to pass in initial city value on creation
#     def initialize(cityarray)
#         @cityarray = cityarray
#     end
#     def add_house
#         @cityarray << " 🏡🌳"
#     end
#     def add_hotel
#         @cityarray << " 🌳🏩🌳"
#     end
#     def display_city
#         @cityarray.each do |item|
#         print item
#   end
#     end
# end

# coins class


require_relative '../src/main.rb'

# city class and methods
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

# coins class and methods
# describe Coins do
    # it 'should be able to instantiate with an integer value' do
    # end
    # end
#     it 'should be able to add coins' do
#     coins = Coins.new
#     coins.add_coins(amount). to eq(amount)
#     end
# end

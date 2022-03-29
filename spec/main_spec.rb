require_relative '../src/main.rb'
require_relative 
require 'rspec'

# city class and methods
describe City do
    it 'should return whats in the array' do
        city = City.new([])
        expect(city.cityarray).to eq([])
    end
    it 'should be able to add a house' do
        city = City.new([])
        expect(city.add_house).to eq([" 🏡🌳"])
        end
    it 'should be able to add a hotel' do
        city = City.new([])
        expect(city.add_hotel).to eq([" 🌳🏩🌳"])
    end
end

# coins class and methods
describe Coins do
    it 'should be able to instantiate with an initial amount' do
        coins = Coins.new(30)
        expect(coins.amount).to eq(30)
    end
    it 'should be able to successfully add coins to amount' do
        coins = Coins.new(100)
        expect(coins.add(250)).to eq(350)
    end
    it 'should be able successfully to subtract coins from amount' do
        coins = Coins.new(100)
        expect(coins.subtract(50)).to eq(50)
    end
end

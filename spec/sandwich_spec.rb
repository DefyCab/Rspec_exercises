require "./lib/sandwich.rb"

describe Sandwich do

    context "when the sandwich should be vegan" do

        it "shold not have meat" do
            sandwich = Sandwich.new(false, false, ['lettuce','tomato', 'mustard'])
            expect(sandwich.meat).to eq(false)
            end

        it "should not have cheese" do
            sandwich = Sandwich.new(false, false, ['lettuce','tomato', 'mustard'])
            expect(sandwich.cheese).to eq(false)
        end


        it "should not have mustard" do
            sandwich = Sandwich.new(false, false, ['lettuce','tomato', 'mustard'])
             expect(sandwich.toppings).to_not include("mustard")

        end
    end    
    context "when the sandwich should not be vegan" do

        it "shold have meat" 
    
        it "should have cheese"

        it "should have mayonaise"
    end
end

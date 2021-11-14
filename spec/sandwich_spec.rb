require "./lib/sandwich.rb"

describe Sandwich do
  context "when the sandwich should be vegan" do
    #let(:sandwich) { Sandwich.new(false, false, ["lettuce", "tomato", "mustard"]) }

    #the symbol sandwich refarence this variable.
    #Whatever evaluated saved in this variable.
    #It applies to all it-blocks.
    #let block not executed unless sandwich is refernced

    it "shold not have meat" do
      #sandwich = Sandwich.new(false, false, ["lettuce", "tomato", "mustard"])
      expect(vegan_sandwich.meat).to eq(false)
    end

    it "should not have cheese" do
      #sandwich = Sandwich.new(false, false, ["lettuce", "tomato", "mustard"])
      expect(vegan_sandwich.cheese).to eq(false)
    end

    it "should not have mustard" do
      #sandwich = Sandwich.new(false, false, ["lettuce", "tomato", "mustard"])
      expect(vegan_sandwich.toppings).to_not include("mayonaise")
    end
  end

  context "when the sandwich should not be vegan" do
    before(:each) do
      @sandwich = Sandwich.new(true, true, ["lettuce", "tomato", "mayonaise"])
    end
    #Before hooks need the @ @sandwich it needs to be an instance variable for it blocks to access.
    
    it "shold have meat" do
      expect(@sandwich.meat).to be(true)
    end
    
    it "should have cheese" do
      expect(@sandwich.cheese).to be(true)
    end
    
    it "should have mayonaise" do
      expect(@sandwich.toppings).to include("mayonaise")
    end
  end
end

def vegan_sandwich
    Sandwich.new(false, false, ["lettuce", "tomato", "mustard"])
end


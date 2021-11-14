require "./lib/bouncer.rb"

describe "Bouncer" do
    it "rejects Love from entering the venue" do
        b = Bouncer.new
        bounced = b.bounce("Love")
        expect(bounced).to be_truthy #be truthy means not nil or false. 
    end
end    
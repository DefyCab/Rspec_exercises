require "./lib/rook.rb"

describe "Rook" do
  it "is expected to return correct point value" do
    rook = Rook.new
    rook_points = rook.points
    expect(rook_points).to be(5)
  end

  it "is expected to return the correct name" do
    rook = Rook.new
    rook_name = rook.name
    expect(rook_name).to eq("Rook") #to be doesnt't work cause they are not the same just equal string
  end
end

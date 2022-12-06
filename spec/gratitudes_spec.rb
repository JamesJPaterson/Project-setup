require "gratitudes"

RSpec.describe Gratitudes do

  it "Checks an array isn't empty" do
    str = Gratitudes.new
    expect(str.format).to eq "Be grateful for: "
  end
  
  it "Add's a gratitude to an array" do 
    counter = Gratitudes.new
    result = counter.add("food")
    expect(result).to eq ["food"]
  end 

  it "Adds a string and counts the length" do
  formated = Gratitudes.new
  formated.add("food")
  expect(formated.format).to eq "Be grateful for: food"
  end
end
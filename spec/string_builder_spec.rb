require "string_builder"

RSpec.describe StringBuilder do
  it "makes sure a string is empty" do
    str = StringBuilder.new
    expect(str.output).to eq ""
  end
  
  it "Adds a string and counts the length" do
  counter = StringBuilder.new
  counter.add("hello")
  expect(counter.size).to eq 5
  expect(counter.output).to eq "hello"
  end
end
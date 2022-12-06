require "greet"

RSpec.describe "greet method" do
  it "greet a given user" do
    result = greet("James")
    expect(result).to eq "Hello, James!"
  end
end
require "present"

RSpec.describe Present do
  it "wraps a value and unwraps a value" do
    present = Present.new
    present.wrap("lighter")
    expect(present.unwrap).to eq "lighter"
  end

  it "fails if it has already been wrapped" do
    present = Present.new
    present.wrap("lighter")
    expect { present.wrap("lighter") }.to raise_error "A contents has already been wrapped."
  end

  it "fails if unwrap before wrapping" do
    present = Present.new
    expect { present.unwrap }.to raise_error "No contents have been wrapped."
  end
end
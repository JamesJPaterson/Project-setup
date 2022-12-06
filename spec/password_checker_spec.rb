require "password"

RSpec.describe Password do
  it "checks if a password is more than 8 characters" do
    password = Password.new
    p = password.length("lighters")
    expect(p.check).to eq true
  end

  it "fails if a password is less than 8 characters" do
    password = Password.new
    expect { password.check("lighters") }.to raise_error "Invalid password, must be 8+ characters."
  end
end
require "password_checker"

RSpec.describe "length checker" do
  it "return true if <= 8" do
    p = PasswordChecker.new
    expect(p.check("lighters")).to eq true
  end

  it "fails" do
    p = PasswordChecker.new
    expect { p.check("lighter") }.to raise_error "Invalid password, must be 8+ characters."
  end
end
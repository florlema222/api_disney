require 'rails_helper'

RSpec.describe Character, type: :model do
  it "has none to begin with" do
    expect(Character.count).to eq 0
  end

  it "has one after adding one" do
    Character.create
    expect(Character.count).to eq 1
  end

  it "has none after one was created in a previous example" do
    expect(Character.count).to eq 0
  end
end

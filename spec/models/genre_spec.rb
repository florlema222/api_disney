require 'rails_helper'

RSpec.describe Genre, type: :model do
  it "has none to begin with" do
    expect(Genre.count).to eq 0
  end

  it "has one after adding one" do
    Genre.create
    expect(Genre.count).to eq 1
  end

  it "has none after one was created in a previous example" do
    expect(Genre.count).to eq 0
  end
end

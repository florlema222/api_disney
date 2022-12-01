require 'rails_helper'

RSpec.describe Movie, type: :model do
  it "has none to begin with" do
    expect(Movie.count).to eq 0
  end

  it "has one after adding one" do
    Movie.create
    expect(Movie.count).to eq 1
  end

  it "has none after one was created in a previous example" do
    expect(Movie.count).to eq 0
  end
end

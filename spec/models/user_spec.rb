require 'rails_helper'


RSpec.describe User, type: :model do
  




  it "has fields: id, name, email, create_at, and updated_at" do


    user1 = User.new
    user1.name = "Jacob Powers"
    user1.email = "powersjcb@gmail.com"
    user1.save

    expect(user1.name).to eq("Jacob Powers")
    expect(user1.created_at).to_not eq nil
    expect(user1.updated_at).to eq(user1.created_at)
  end

  it "should be valid with valid input" do
    user1 = User.new
    user1.name = "Jacob Powers"
    user1.email = "powersjcb@gmail.com"
    expect(user1).to be_valid
  end


  it "should be invalid with empty name" do
    user_invalid = User.new
    user_invalid.name = ""
    expect(user_invalid).to_not be_valid
  end


end

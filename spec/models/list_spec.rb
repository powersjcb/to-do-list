# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  list_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

require "rails_helper"

RSpec.describe List, type: :model do

  it "allows valid list creation" do
    @user = User.create!(name: "Jacob Powers", email: "powersjcb@gmail.com")
    @list = @user.lists.build(list_name: "List name")
    expect(@list).to be_valid
  end  

  it "is invalid with empty names" do
    @user = User.create!(name: "Jacob Powers", email: "powersjcb@gmail.com")
    @list = @user.lists.build(list_name: "")
    expect(@list).to be_invalid
  end

  it "is invalid if not associated with a user" do
  end

end

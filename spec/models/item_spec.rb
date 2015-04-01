# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  list_id    :integer
#

require 'rails_helper'

RSpec.describe Item, type: :model do

  it "can be created with valid input" do
    @user = User.create!(name: "Jacob Powers", email: "powersjcb@gmail.com")
    @list = @user.lists.build(list_name: "List name")
    @list.save
    expect(@list).to be_valid
  end

  # it "is invalid with empty name" do
  # end

  # it "is invalid with no list association" do
  # end

end

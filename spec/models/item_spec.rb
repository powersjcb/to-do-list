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
  before(:each) do
    @user = User.create!(name: "Jacob Powers", email: "powersjcb@gmail.com")
    @list = @user.lists.build(list_name: "List name")
    @list.save
  end

  it "can be created with valid name and user id" do
    @item = @list.items.build(name: "Item name")
    expect(@item).to be_valid
  end

  it "is invalid with empty name" do
    @item = @list.items.build(name: "")
    expect(@item).to be_invalid
  end

  it "is invalid with no list association" do
    @item = Item.create(name: "Item without list association")
    expect(@item).to be_invalid
  end

end

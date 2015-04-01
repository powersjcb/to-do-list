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

class Item < ActiveRecord::Base
  belongs_to :list
  validates :name, presence: true
  validates :list_id, presence: true
end

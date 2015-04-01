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

class List < ActiveRecord::Base
  belongs_to :user
  has_many :items, dependent: :destroy

  validates :user_id, presence: true
  validates :list_name, presence: true
end

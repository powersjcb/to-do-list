class List < ActiveRecord::Base
  belongs_to :user
  has_many :items

  validates :user_id, presence: true
  validates :list_name, presence: true
end
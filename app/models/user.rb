class User < ActiveRecord::Base
  has_many :lists, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true


end

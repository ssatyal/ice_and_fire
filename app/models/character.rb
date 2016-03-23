class Character < ActiveRecord::Base
  belongs_to :house
  validates :house, presence: true
  validates :name, presence: true
end

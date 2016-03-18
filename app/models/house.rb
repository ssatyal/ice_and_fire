class House < ActiveRecord::Base
  has_many :characters, dependent: :destroy
  validates :name, uniqueness: :true, presence: :true
end

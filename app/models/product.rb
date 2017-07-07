class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :name, length: { maximum: 50 }
  validates :cost, :presence => true
end

class Product < ActiveRecord::Base
  belongs_to :user 
  has_many :reviews
  validates :name, :presence => true
  validates :name, length: { maximum: 50 }
  validates :cost, :presence => true
end

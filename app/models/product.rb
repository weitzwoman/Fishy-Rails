class Product < ActiveRecord::Base
  has_many :comments
  belongs_to :user

  validates :name, :presence => true
  validates :description, :presence => true
  validates :price, :presence => true
end

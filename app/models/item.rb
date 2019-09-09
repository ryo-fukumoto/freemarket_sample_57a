class Item < ApplicationRecord
  belongs_to :user
  belongs_to :brand
  has_one :size
  belongs_to :category
  has_many :comments
  has_many :likes
  has_one :seller
  has_one :buyer
  has_one :delivery
  has_one :dealing
  has_one :image
  belongs_to :seller, class_name: "User"
  belongs_to :buyer, class_name: "User"


  accepts_nested_attributes_for :image
  accepts_nested_attributes_for :size
  accepts_nested_attributes_for :brand
  accepts_nested_attributes_for :delivery
  accepts_nested_attributes_for :category

  validates :name, presence: true
  validates :description, presence: true
  validates :condition, presence: true
  validates :price, presence: true
  validates :category_id, presence: true
  validates :delivery, presence: true
  
end

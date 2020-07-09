class Product < ApplicationRecord
  #has attributes name:string description:string
  belongs_to :merchant
  has_many :requests, dependent: :destroy
  has_many :users, through: :requests

  scope :named, ->  (name) {where("name LIKE ?", name)}

  #lines 10-12 is a class method version of scope method on line 7
  #def self.named(name)
  #  where("name LIKE ?", name)
  #end

  #def self.by_merchant(merchant_id)
  #  where(merchant: merchant_id)
  #end
end

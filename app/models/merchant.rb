class Merchant < ApplicationRecord
  has_many :requests
  has_many :users, through: :requests
  has_many :products
  belongs_to :company
end

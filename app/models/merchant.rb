class Merchant < ApplicationRecord
  has_many :requests, dependent: :destroy
  has_many :products, dependent: :destroy
  belongs_to :company
end

class Product < ApplicationRecord
  #has attributes name:string description:string
  belongs_to :merchant
  has_many :requests, dependent: :destroy

  def self.by_merchant(merchant_id)
    where(merchant: merchant_id)
  end
end

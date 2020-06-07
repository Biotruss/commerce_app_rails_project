class Request < ApplicationRecord
  belongs_to :user
  belongs_to :merchant
  has_many :custom_requests, dependent: :destroy
  accepts_nested_attributes_for :custom_requests
  belongs_to :product

  validates :product_id, presence: true
  validates :quantity, presence: true
end

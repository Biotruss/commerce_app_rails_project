class Request < ApplicationRecord
  belongs_to :user
  belongs_to :merchant
  has_many :custom_requests
  belongs_to :product
end

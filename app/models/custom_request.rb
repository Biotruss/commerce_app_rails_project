class CustomRequest < ApplicationRecord
  belongs_to :request

  validates :description, presence: true
end

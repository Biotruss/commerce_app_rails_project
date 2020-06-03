class Company < ApplicationRecord
  has_many :merchants, dependent: :destroy
end

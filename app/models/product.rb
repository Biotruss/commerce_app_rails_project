class Product < ApplicationRecord
  #has attributes name:string description:string
  belongs_to :merchant
end

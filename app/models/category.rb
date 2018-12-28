class Category < ApplicationRecord
  has_many :expenses, dependent: :destroy
end

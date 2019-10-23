class Product < ApplicationRecord
    belongs_to :user
    scope :greater_than_hundred_thousand, -> {where("price > 100000")}
end

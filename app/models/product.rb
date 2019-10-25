class Product < ApplicationRecord
    attr_accessor :image
    searchkick word_middle: [:name, :price]
    belongs_to :user
    mount_uploader :image, ImageUploader
    scope :greater_than_hundred_thousand, -> {where("price > 100000")}
end

class Seller < ApplicationRecord
    belongs_to :user
    has_many :reviews

    has_attached_file :food_img, styles: { medium: "425x300>", thumb: "425x300>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :food_img, content_type: /\Aimage\/.*\z/
end

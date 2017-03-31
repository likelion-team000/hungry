class Seller < ApplicationRecord

    has_attached_file :food_img, styles: { medium: "450x325>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :food_img, content_type: /\Aimage\/.*\z/

    def self.search(search)
      where("food LIKE ?", "%#{search}%") 
    end

end

class AddAttachmentFoodImgToSellers < ActiveRecord::Migration
  def self.up
    change_table :sellers do |t|
      t.attachment :food_img
    end
  end

  def self.down
    remove_attachment :sellers, :food_img
  end
end

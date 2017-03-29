class CreateSellers < ActiveRecord::Migration[5.0]
  def change
    create_table :sellers do |t|
      t.string :food
      t.string :location
      t.string :price
      t.string :date
      t.string :mobile
      t.text :details

      t.timestamps
    end
  end
end

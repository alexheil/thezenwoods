class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :username
      t.string :keycode
      t.string :title
      t.string :image
      t.string :image_bottom
      t.string :image_square
      t.string :tagline
      t.string :element
      t.string :color
      t.string :readtime
      t.text :content
      t.string :image_credit
      t.string :image_bottom_credit
      t.string :image_square_credit
      t.string :slug

      t.timestamps
    end
  end
end

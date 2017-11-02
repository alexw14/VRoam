class AddImagesToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :image1, :string
    add_column :products, :image2, :string
    add_column :products, :image3, :string
  end
end

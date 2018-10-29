class AddPhotoColToResCus < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :image_url, :text
    add_column :restaurants, :image_url, :text
    add_column :restaurants, :image2_url, :text
    add_column :restaurants, :image3_url, :text
  end
end

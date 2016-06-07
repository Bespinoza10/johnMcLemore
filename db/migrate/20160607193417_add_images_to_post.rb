class AddImagesToPost < ActiveRecord::Migration
  def change
    add_column :posts, :image, :url
  end
end

class AddImageToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :avatar, :string, :image
  end
end

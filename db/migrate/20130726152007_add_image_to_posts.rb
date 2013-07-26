class AddImageToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :string, :image
  end
end

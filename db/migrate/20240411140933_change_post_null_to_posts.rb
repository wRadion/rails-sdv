class ChangePostNullToPosts < ActiveRecord::Migration[7.1]
  def change
    rename_column :posts, :posts_id, :post_id
    change_column_null :posts, :post_id, true
  end
end

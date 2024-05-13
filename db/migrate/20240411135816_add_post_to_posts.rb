class AddPostToPosts < ActiveRecord::Migration[7.1]
  def change
    add_reference :posts, :posts, null: false, foreign_key: true
  end
end

class AddAttributesToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :description, :text
    add_column :movies, :img_url, :string
    add_column :movies, :user_id, :integer
  end
end

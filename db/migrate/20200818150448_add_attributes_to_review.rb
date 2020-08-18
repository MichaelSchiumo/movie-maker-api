class AddAttributesToReview < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :score, :integer
    add_column :reviews, :comment, :text
  end
end

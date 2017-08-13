class RemoveColumnToReviews < ActiveRecord::Migration[5.0]
  def change
  	remove_column :reviews, :source_id
  end
end

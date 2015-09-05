class AddFilmeIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :filme_id, :integer
  end
end

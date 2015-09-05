class AddUserIdToFilmes < ActiveRecord::Migration
  def change
    add_column :filmes, :user_id, :integer
  end
end

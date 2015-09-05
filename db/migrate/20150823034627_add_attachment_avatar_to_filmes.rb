class AddAttachmentAvatarToFilmes < ActiveRecord::Migration
  def self.up
    change_table :filmes do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :filmes, :avatar
  end
end

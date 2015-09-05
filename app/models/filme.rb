class Filme < ActiveRecord::Base
  searchkick
  belongs_to :user
  has_many :reviews
  #adiciona a associação entre o usuário e o Filme
  #adiciona a associação entre o filme e o usuário.

  has_attached_file :avatar, styles: { medium: "200x300#" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end

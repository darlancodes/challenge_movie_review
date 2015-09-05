class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :filmes
  has_many :reviews, dependent: :destroy #Exclui todas as reviews associadas ao usuário, caso o mesmo seja excluido
                                          # dependent causa essa dependencia...

end

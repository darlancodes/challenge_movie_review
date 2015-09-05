class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :filme
  #Determina que uma review pertence a um usuário e a um filme.
end

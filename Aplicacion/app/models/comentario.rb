class Comentario < ApplicationRecord
  belongs_to :tema
  belongs_to :user
end

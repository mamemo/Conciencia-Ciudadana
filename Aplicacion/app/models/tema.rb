class Tema < ApplicationRecord
	belongs_to :user
	has_many :comentarios
end

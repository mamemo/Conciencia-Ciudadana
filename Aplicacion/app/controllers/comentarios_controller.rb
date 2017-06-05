class ComentariosController < ApplicationController

	def create
		@tema = Tema.find(params[:tema_id])
		@comentario = @tema.comentarios.create(params[:comentario].permit(:comentario))
		@comentario.user_id = current_user.id if current_user
		@comentario.save

		if @comentario.save
			redirect_to tema_path(@tema)
		else
			render 'new'
		end
	end
end

class TemasController < ApplicationController
	before_action :find_tema, only: [:show, :edit, :update, :destroy]
	#before_action :authenticate_user!, except: [:index, :show]

	def index
		@temas = Tema.all
	end

	def show
	end

	def new
		@tema = current_user.temas.build
	end

	def create
		@tema = current_user.temas.build(tema_params)

		if @tema.save
			redirect_to @tema
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		if @tema.update(tema_params)
			redirect_to @tema
		else
			render 'edit'
		end
	end

	def destroy
		@tema.destroy
		redirect_to root_path
	end

	private def find_tema
		@tema = Tema.find(params[:id])
	end

	private def tema_params
		params.require(:tema).permit(:titulo,:contenido)
	end
end

class FliesController < ApplicationController
	
	def index
		@flies = Fly.all
	end

	def show
		@fly = Fly.find params[:id]
	end

	def new
		@fly = Fly.new
	end

	def create
		Fly.create fly_params
	end

	def edit
		@fly = Fly.find params[:id]
	end

	def update
		fly = Fly.find params[:id]
		fly.update_attributes fly_params
		redirect_to flies_path
	end

	def destroy
		fly = Fly.find params[:id]
		fly.destroy
	end

	private 
		def fly_params
      params.require(:fly).permit(:name, :trapped)
    end
	
end
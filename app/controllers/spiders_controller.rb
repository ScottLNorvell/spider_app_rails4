class SpidersController < ApplicationController
	
	def index
		@spiders = Spider.all
	end

	def show
		@spider = Spider.find params[:id]
	end

	def new
		@spider = Spider.new
	end

	def create
		Spider.create spider_params
	end

	def edit
		@spider = Spider.find params[:id]
	end

	def update
		spider = Spider.find params[:id]
		spider.update_attributes spider_params
		redirect_to spiders_path
	end

	def destroy
		spider = Spider.find params[:id]
		spider.destroy
		redirect_to spiders_path
	end

	private 
		def spider_params
      params.require(:spider).permit(:name, :size)
    end

end
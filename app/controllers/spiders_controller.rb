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
		Spider.create params[:spider]
	end

	def edit
		@spider = Spider.find params[:id]
	end

	def update
		spider = Spider.find params[:id]
		spider.update_attributes params[:spider]
		redirect_to spiders_path
	end

	def destroy
		spider = Spider.find params[:spider]
		spider.destroy
	end

end
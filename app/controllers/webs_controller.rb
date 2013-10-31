class WebsController < ApplicationController
	
	def index
		@webs = Web.all
	end

	def show
		@web = Web.find params[:id]
	end

	def new
		@web = Web.new
	end

	def create
		Web.create params[:web]
	end

	def edit
		@web = Web.find params[:id]
	end

	def update
		web = Web.find params[:id]
		web.update_attributes params[:web]
		redirect_to webs_path
	end

	def destroy
		web = Web.find params[:web]
		web.destroy
	end
	
end
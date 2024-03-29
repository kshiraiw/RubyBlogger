class TagsController < ApplicationController
	def show
		@tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end

	before_filter :require_login, only: [:destroy]

	def destroy
		a = Tag.find(params[:id]).destroy
		flash.notice = "Tag deleted!"
		redirect_to tags_path
	end
end

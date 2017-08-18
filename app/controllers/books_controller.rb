class BooksController < ApplicationController
	def index
		render json: Book.all
	end

	def new
	end
end
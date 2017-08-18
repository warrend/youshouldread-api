class BooksController < ApplicationController
	def index
		render json: Book.all
	end

	def new
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			render json: @book, status: 201
		end
	end

	def show
		@book = Book.find(params[:id])
		render json: @book 
	end

	def update
		@book = Book.find(params[:id])
		@book.update(book_params)
		render json: @book 
	end

	private

		def book_params
	    params.require(:book).permit(:title, :author, :pages, :review, :genre, :category)
	  end
end
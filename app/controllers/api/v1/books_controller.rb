module Api
	module V1
		class BooksController < ApplicationController

			### => API Documentation
			## api :GET, '/api/v1/books', "List of all books."
			## param :book_name, String, :required => false, :desc => "Book name, sending the request as url params"
			
			### => 'index' API Defination 
			def index
				@books = Book.order("created_at DESC")
				@books = @books.by_book_name(params[:book_name]).order("created_at DESC") if params[:book_name].present?
				# render json: {status: 'SUCCESS', message:'Loaded books', data:@books},status: :ok
			end
		end
	end
end
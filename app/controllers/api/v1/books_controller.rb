module Api
	module V1
		class BooksController < ApplicationController

			### => API Documentation
			## api :GET, 'http://localhost:3001/api/v1/books?book_name=A Confederacy of Dunces', "List of all books."
			## param :book_name, String, :required => false, :desc => "Book name, sending the request as url params"
			
			### => 'index' API Defination 
			def index
				if authenticate_user_with_token == true
					@books = Book.order("created_at DESC")
					@books = @books.by_book_name(params[:book_name]).order("created_at DESC") if params[:book_name].present?
					# render json: {status: 'SUCCESS', message:'Loaded books', data:@books},status: :ok
				end
			end

			## api :GET, 'http://localhost:3001/api/v1/books/get_all_data_by_author_name?name=Pietro Graham', "List of all books."
			## param :name, String, :required => false, :desc => "Author name, sending the request as url params"

			## => Fetch data from all three table based on author name
			def get_all_data_by_author_name
				if authenticate_user_with_token == true
					@all_data = Author.order("created_at DESC")
					@all_data = @all_data.by_author_name(params[:name]).order("created_at DESC") if params[:name].present?
				end
			end
		end
	end
end
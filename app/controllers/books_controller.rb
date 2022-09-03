class BooksController < ApplicationController
	
	def index
		@books = Book.all		
		@book = Book.new()

	end

	def create
		@book = Book.new(book_params)

		respond_to do |format|


			if @book.save
				format.html{ redirect_to root_path}
				format.js{render layout: false}
				format.json{render :book_path}
			else
				format.html{render :index}
				foramt.json{render json: @book.errors}
			end
		end			
	end	

	def destroy
		@book = Book.find(params[:id])
    	@book.destroy

    	respond_to do |format|
    		format.html
    		format.js
    	end	

    	#redirect_to books_path
	end	


private
	def book_params
    	params.require(:book).permit(:name, :description)
  	end






end
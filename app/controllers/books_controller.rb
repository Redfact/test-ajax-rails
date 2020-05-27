class BooksController < ApplicationController
  def index
    @books = Book.all
  end


  def create
    @book = Book.create(book_params)
    #action a faire sans Ajax (reccharge la page)
    respond_to do |format|
      format.html { redirect_to books_path }
      #Avec Ajax
      format.js {}
    end 
  end

  def book_params
    params.permit(:title, :author)
  end

end

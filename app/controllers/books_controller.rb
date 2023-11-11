class BooksController < ApplicationController
  def new
    @book=Booker.new
  end
  
  def create
    book = Booker.new(book_params)
    book.save
    redirect_to '/books'
  end

  def index
    @books=Booker.all
  end

  def show
    @book=Booker.find(params[:id])
  end

  def edit
  end
  def book_params
    params.require(:book).permit(:title,:body)
  end
end

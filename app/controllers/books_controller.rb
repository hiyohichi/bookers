class BooksController < ApplicationController
  def new
    @book=Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to '/books'
    else
      @books=Book.all
    end
  end

  def index
    @books=Book.all
    @book=Book.new
  end

  def show
    @book=Book.find(params[:id])
  end

  def edit
  end
  def book_params
    params.require(:book).permit(:title,:body)
  end
end

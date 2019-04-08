class BooksController < ApplicationController
  def index
    @books = Book.all.order("id ASC")
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    flash[:notice] = "successfully" if book.save
    redirect_to book_path(book)
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    flash[:notice] = "successfully" if book.update(book_params)
    redirect_to book_path(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end

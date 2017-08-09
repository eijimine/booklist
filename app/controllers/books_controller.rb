class BooksController < ApplicationController

  def index
    @books = Book.all

    respond_to do |format|
      format.html
      format.text

      format.csv do
        render plain: Book.generate_csv(@books)
      end

      format.json do
        render json: @books
        # .map { |book|
          # {Title: book.title, Author: book.author, Already_Read: book.already_read}
        # }
      end

    end

  end


end

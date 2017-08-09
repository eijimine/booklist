class BooksController < ApplicationController

  def index
    @books = Book.all

    respond_to do |format|
      format.html
      format.text
      #
      # format.json do
      #   render json: @monsters.map { |monster|
      #     {name: monster.name, home: monster.home, creepiness: monster.creepiness}
      #   }
      # end

    end

  end

end

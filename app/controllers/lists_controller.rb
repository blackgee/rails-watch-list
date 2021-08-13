class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
       redirect_to list_path(@list)
    else
      render :new
    end
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  private

   def list_params
      params.require(:list).permit(:name)
    end
  # def create
  #   @movie = movie.find(params[:movie_id])
  #   @review = Review.new(review_params)
  #   @review.movie = @movie
  #   if @review.save
  #     redirect_to movie_path(@movie)
  #   else
  #     render :new
  #   end
  # end

end

class BookmarksController < ApplicationController

  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new

  end

   def create
     @bookmark = Bookmark.new

     if @bookmark.save
      redirect_to @bookmark, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
   end

   def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
   end


end

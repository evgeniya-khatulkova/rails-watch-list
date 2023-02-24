class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def create
    bookmark = Bookmark.new(bookmark_params)
    bookmark.save
    redirect_to lists_path
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path, status: :see_other
  end

private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :list_id, :movie_id)
  end
end

class AlbumsController < ApplicationController
  def show
    @album = Album.find(params[:id])
  end
  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      redirect_to @album, notice: 'Album successfully created.'
    else
      render :new
    end
  end

  private
    def album_params
      params.require(:album).permit(:title, :member_id)
    end
end

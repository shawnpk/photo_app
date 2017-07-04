class AlbumsController < ApplicationController
  def show
    @album = Album.find(params[:id])
  end
  def new
    @album = current_member.albums.new
  end

  def create
    @album = current_member.albums.create(album_params)

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

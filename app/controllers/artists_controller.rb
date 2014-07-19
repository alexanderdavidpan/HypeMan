class ArtistsController < ApplicationController
  protect_from_forgery
  def create
    @artist = Artist.new(artist_params)
    @artist.save
    redirect_to root_path
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :email, :password)
  end
end
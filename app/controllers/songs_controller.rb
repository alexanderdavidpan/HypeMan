class SongsController < ApplicationController
  def index
    @songs = AWS::S3::Bucket.find(BUCKET).objects
  end

  def upload

  end

  def delete
    if (params[:song])
        AWS::S3::S3Object.find(params[:song], BUCKET).delete
        redirect_to root_path
    else
        render :text => "No song was found to delete!"
    end
  end
end
class SongsController < ApplicationController
  def index
    AWS::S3::Bucket.find(BUCKET)
  end

  def upload

  end

  def delete

  end
end
class UsersController < ApplicationController
  protect_from_forgery

  def create
    p params
  end
end
class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@use = User.new
  end
end

class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.public(current_user) 
  end

end
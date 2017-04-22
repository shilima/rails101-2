class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end

  def edit
    @group = Group.find(params[:id])
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to groups_path, alert: 'Groups Deleted'
  end
end

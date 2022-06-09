class PostListController < ApplicationController
  before_action :authenticate_user!
  layout "navbar"
  def index
    @post = Post.new(post_parameters)
  end

  private


end

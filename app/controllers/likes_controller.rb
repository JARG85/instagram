class LikesController < ApplicationController
  def create
    @like = Like.new(like_params)
    if @like.save
      render html: "<h1>logrado</h1>"
    else
      render html: "no logrado"
    end
  end

  private
    def like_params
      params.permit(:likeable_type, :likeable_id ).merge({user: current_user})
    end

end

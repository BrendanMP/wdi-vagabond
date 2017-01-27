class PostsController < ApplicationController
  def create
    @location = Location.find(params[:location_id])
    @post = @location.posts.create(post_params)
    redirect_to location_path(@location)
  end

  def destroy
    @location = Location.find(params[:location_id])
    @post = @location.posts.find(params[:id])
    @post.destroy
    redirect_to location_path(@location)
  end

  private

  def post_params
    params.require(:post).permit(:title,:body)
  end

end

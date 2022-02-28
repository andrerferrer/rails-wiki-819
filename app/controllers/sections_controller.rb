class SectionsController < ApplicationController
  def index
    @post = Post.find params[:post_id]
    @sections = @post.sections
  end

end

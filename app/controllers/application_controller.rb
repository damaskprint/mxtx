class ApplicationController < ActionController::Base
before_action :set_search

  def set_search
    @search = Post.search(params[:q])
    @posts = @search.result
    
  end

end

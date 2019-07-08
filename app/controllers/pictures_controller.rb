class PicturesController < ApplicationController
  def index
  end

  def new
    @blog = Blog.new
  end
end

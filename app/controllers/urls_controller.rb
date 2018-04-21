class UrlsController < ApplicationController
  def create
    @url = Url.new(url_params)
    if @url.save
      # redirect ot showing 
    else
      render :new 
    end
  end

  def show
  end

  def new
    @url = Url.new
  end
  
  private 
  def url_params
    params.require(:url).permit(:href)
  end
end

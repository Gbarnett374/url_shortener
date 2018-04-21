class UrlsController < ApplicationController
  def show
    @url = Url.find(params[:id])
    # A complete url with the shortened href
    @complete_shortened_url = "#{root_url}#{@url.shortened_href}" 
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    if @url.save
      redirect_to @url
    else
      render :new 
    end
  end

  def redirect 
    @url = Url.find_by(shortened_href: params[:shortened_href])
    redirect_to(@url.href)
  end
  
  private 
  def url_params
    params.require(:url).permit(:href)
  end
end

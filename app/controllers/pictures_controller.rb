class PicturesController < ApplicationController
  def index
  end
  def show
    @picture = Picture.find(params[:id])
  end
  def new
  end

def create
  @picture = Picture.new(picture_params)

  @picture.save
  redirect_to @picture
end
  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end

class PicturesController < ApplicationController
  def index
  end
　def show
     @picture = Picture.find(params[:id])
  end
  def new
  end
  def create
    @picture = Picture.new(params[:picture])

　　 @picture.save
　　　 redirect_to @picture
   end
   private
     def picture_params
       params.require(:picture).permit(:title, :text)
     end

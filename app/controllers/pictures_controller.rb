class PicturesController < ApplicationController
  def index
   end
  def new
   end
  def create
    render plain: params[:pictures].inspect
   end
end

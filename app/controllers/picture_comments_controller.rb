class PictureCommentsController < ApplicationController
  def create
    @picture = Picture.find(params[:picture_id])
    @picture_comment = @picture.picture_comments.create(picture_comments_params)
    redirect_to picture_path(@picture)
  end

  def destroy
      @picture = Picture.find(params[:picture_id])
      @picture_comment = @picture.picture_comments.find(params[:id])
      @picture_comment.destroy
      redirect_to picture_path(@picture)
    end

    private
    def picture_comments_params
      params.require(:picture_comment).permit(:commenter, :body)
    end
end

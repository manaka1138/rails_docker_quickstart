class UploaderController < ApplicationController
  def index
  end

  def form
  end

  def edit
    @upload_file = UploadFile.find(params[:id])
  end


  def update
    @upload_file = UploadFile.find(params[:id])

    if @upload_file.update(upload_file_params)
      redirect_to @upload_file
    else
      render 'edit'
    end
  end


  def upload
    @upload_file = UploadFile.new( params.require(:upload_file).permit(:name, :file) )
    @upload_file.save
    redirect_to action: 'index'
  end

  def download
       @upload_file = UploadFile.find(params[:id].to_i)
    filepath = @upload_file.file.current_path
    stat = File::stat(filepath)
    send_file(filepath, :filename => @upload_file.file.url.gsub(/.*\//,''), :length => stat.size)

  end

  def destroy
    @upload_file = UploadFile.find(params[:id])
    @upload_file.destroy

    redirect_to uploader_index_path
  end

end

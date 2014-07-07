class UploadController < ApplicationController
  def index
  end
  
  def upload_file
    @pdf_file = PdfFile.new()
    if request.post?
      
      @pdf_file.pdf = params[:pdf_file][:pdf]
      if @pdf_file.save
        render :text => "upload ok" and return
      end
    end
    render  :layout => false
  end
  
  def save_file
    
  end
  
  
end

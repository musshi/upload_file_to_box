class UploadController < ApplicationController
  require 'ruby-box'
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
  
  def authorize_url
    session = RubyBox::Session.new({
      client_id: 'q80g0i97y9bmgvtkbi7qqeh06sitgwlt',
      client_secret: 'o4Jldrb45zvCeflrdAwLar3OFqoKJSQ8'
    })

    authorize_url = session.authorize_url('http://localhost:3000')
  end
  
  
  
  
  
  
end

class UploadController < ApplicationController
  require 'ruby-box'
  def index
  end
  
  def upload_file
    @pdf_file = PdfFile.new()
    if request.post?      
      @pdf_file.pdf = params[:pdf_file][:pdf]
      if @pdf_file.save
        session = RubyBox::Session.new({
          client_id: 'q80g0i97y9bmgvtkbi7qqeh06sitgwlt',
          client_secret: 'o4Jldrb45zvCeflrdAwLar3OFqoKJSQ8',
          access_token: 'nc5agec5P0W5MZpjH5opFNn94xuOWzmP'
        })

        client = RubyBox::Client.new(session)
        client.upload_file(@pdf_file.pdf.path,'test_upload')
        render action: => "upload_file" and return
      end
    end
    render  :layout => false
    
  end
  
  def authorize_url
    session = RubyBox::Session.new({
      client_id: 'q80g0i97y9bmgvtkbi7qqeh06sitgwlt',
      client_secret: 'o4Jldrb45zvCeflrdAwLar3OFqoKJSQ8',
      access_token: 'nc5agec5P0W5MZpjH5opFNn94xuOWzmP'
    })

    client = RubyBox::Client.new(session)
  end
  
  
  
  
  
  
end

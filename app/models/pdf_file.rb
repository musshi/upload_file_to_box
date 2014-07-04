class PdfFile < ActiveRecord::Base
  # attr_accessible :pdf
  
  has_attached_file :pdf
end

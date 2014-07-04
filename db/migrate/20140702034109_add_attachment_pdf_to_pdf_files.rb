class AddAttachmentPdfToPdfFiles < ActiveRecord::Migration
  def self.up
    change_table :pdf_files do |t|
      t.attachment :pdf
    end
  end

  def self.down
    drop_attached_file :pdf_files, :pdf
  end
end

class CreatePdfFiles < ActiveRecord::Migration
  def change
    create_table :pdf_files do |t|

      t.timestamps
    end
  end
end

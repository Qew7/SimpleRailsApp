class AddAttachmentPhotoToDirectors < ActiveRecord::Migration[5.1]
  def self.up
    change_table :directors do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :directors, :photo
  end
end

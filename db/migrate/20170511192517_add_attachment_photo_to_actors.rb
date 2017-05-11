class AddAttachmentPhotoToActors < ActiveRecord::Migration[5.1]
  def self.up
    change_table :actors do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :actors, :photo
  end
end

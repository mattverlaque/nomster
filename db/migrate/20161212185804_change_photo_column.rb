class ChangePhotoColumn < ActiveRecord::Migration
  def change
    rename_column :photos, :photo, :picture
  end
end

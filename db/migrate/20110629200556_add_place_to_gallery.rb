class AddPlaceToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :place, :string
  end
end

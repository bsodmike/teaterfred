class AddWebsiteLinkToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :website_link, :string
  end
end

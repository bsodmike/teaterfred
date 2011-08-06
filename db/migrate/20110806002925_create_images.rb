class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :title
      t.string :image
      t.integer :gallery_id
      
      t.timestamps
    end
  end
end

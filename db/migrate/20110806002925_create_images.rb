class CreateImages < ActiveRecord::Migration
  def self.up
    create_tables :images do |t|
      t.string :title
      t.string :image
      t.integer :gallery_id
      
      t.timestamps
    end
  end
end

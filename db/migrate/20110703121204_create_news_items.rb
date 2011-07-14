class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items do |t|
      t.string :title
      t.text :content
      t.string :place
      t.string :image, :default => NULL

      t.timestamps
    end
  end
end

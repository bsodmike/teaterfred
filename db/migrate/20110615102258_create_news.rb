class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :place
      t.text :content

      t.timestamps
    end
  end
end

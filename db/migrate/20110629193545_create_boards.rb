class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.string :title
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end

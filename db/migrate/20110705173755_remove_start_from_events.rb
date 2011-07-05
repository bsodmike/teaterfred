class RemoveStartFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :start
  end

  def down
    add_column :events, :start, :string    
  end
end

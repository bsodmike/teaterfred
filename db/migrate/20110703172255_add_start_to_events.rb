class AddStartToEvents < ActiveRecord::Migration
  def change
    add_column :events, :start, :string
  end
end

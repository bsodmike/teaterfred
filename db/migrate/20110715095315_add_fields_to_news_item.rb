class AddFieldsToNewsItem < ActiveRecord::Migration
  def change
    add_column :news_items, :date, :string
    add_column :news_items, :age_range, :string
  end
end

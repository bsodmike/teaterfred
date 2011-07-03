require 'spec_helper'

describe "news_items/edit.html.erb" do
  before(:each) do
    @news_item = assign(:news_item, stub_model(NewsItem,
      :title => "MyString",
      :content => "MyText",
      :place => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit news_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => news_items_path(@news_item), :method => "post" do
      assert_select "input#news_item_title", :name => "news_item[title]"
      assert_select "textarea#news_item_content", :name => "news_item[content]"
      assert_select "input#news_item_place", :name => "news_item[place]"
      assert_select "input#news_item_image", :name => "news_item[image]"
    end
  end
end

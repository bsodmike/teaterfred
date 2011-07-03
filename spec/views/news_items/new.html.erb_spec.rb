require 'spec_helper'

describe "news_items/new.html.erb" do
  before(:each) do
    assign(:news_item, stub_model(NewsItem,
      :title => "MyString",
      :content => "MyText",
      :place => "MyString",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new news_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => news_items_path, :method => "post" do
      assert_select "input#news_item_title", :name => "news_item[title]"
      assert_select "textarea#news_item_content", :name => "news_item[content]"
      assert_select "input#news_item_place", :name => "news_item[place]"
      assert_select "input#news_item_image", :name => "news_item[image]"
    end
  end
end

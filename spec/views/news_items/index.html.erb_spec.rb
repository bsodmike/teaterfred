require 'spec_helper'

describe "news_items/index.html.erb" do
  before(:each) do
    assign(:news_items, [
      stub_model(NewsItem,
        :title => "Title",
        :content => "MyText",
        :place => "Place",
        :image => "Image"
      ),
      stub_model(NewsItem,
        :title => "Title",
        :content => "MyText",
        :place => "Place",
        :image => "Image"
      )
    ])
  end

  it "renders a list of news_items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Place".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end

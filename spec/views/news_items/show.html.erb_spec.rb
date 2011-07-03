require 'spec_helper'

describe "news_items/show.html.erb" do
  before(:each) do
    @news_item = assign(:news_item, stub_model(NewsItem,
      :title => "Title",
      :content => "MyText",
      :place => "Place",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Place/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Image/)
  end
end

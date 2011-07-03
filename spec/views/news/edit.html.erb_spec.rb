require 'spec_helper'

describe "news/edit.html.erb" do
  before(:each) do
    @news = assign(:news, stub_model(News,
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit news form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => news_index_path(@news), :method => "post" do
      assert_select "input#news_title", :name => "news[title]"
      assert_select "textarea#news_content", :name => "news[content]"
    end
  end
end

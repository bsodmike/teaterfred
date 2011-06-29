require 'spec_helper'

describe "boards/index.html.erb" do
  before(:each) do
    assign(:boards, [
      stub_model(Board,
        :name => "Name",
        :title => "Title",
        :content => "MyText",
        :image => "Image"
      ),
      stub_model(Board,
        :name => "Name",
        :title => "Title",
        :content => "MyText",
        :image => "Image"
      )
    ])
  end

  it "renders a list of boards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end

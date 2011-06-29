require 'spec_helper'

describe "boards/new.html.erb" do
  before(:each) do
    assign(:board, stub_model(Board,
      :name => "MyString",
      :title => "MyString",
      :content => "MyText",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new board form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => boards_path, :method => "post" do
      assert_select "input#board_name", :name => "board[name]"
      assert_select "input#board_title", :name => "board[title]"
      assert_select "textarea#board_content", :name => "board[content]"
      assert_select "input#board_image", :name => "board[image]"
    end
  end
end

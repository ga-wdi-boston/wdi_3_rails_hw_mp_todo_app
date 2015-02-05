require 'rails_helper'

RSpec.describe "lists/new", :type => :view do
  before(:each) do
    assign(:list, List.new(
      :name => "MyString",
      :project => "MyString"
    ))
  end

  it "renders new list form" do
    render

    assert_select "form[action=?][method=?]", lists_path, "post" do

      assert_select "input#list_name[name=?]", "list[name]"

      assert_select "input#list_project[name=?]", "list[project]"
    end
  end
end

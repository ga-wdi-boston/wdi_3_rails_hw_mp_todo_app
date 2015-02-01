require 'rails_helper'

RSpec.describe "lists/edit", :type => :view do
  before(:each) do
    @list = assign(:list, List.create!(
      :name => "MyString",
      :project => "MyString"
    ))
  end

  it "renders the edit list form" do
    render

    assert_select "form[action=?][method=?]", list_path(@list), "post" do

      assert_select "input#list_name[name=?]", "list[name]"

      assert_select "input#list_project[name=?]", "list[project]"
    end
  end
end

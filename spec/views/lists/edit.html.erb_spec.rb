require 'rails_helper'

RSpec.describe "lists/edit", :type => :view do
  before(:each) do
    @list = assign(:list, List.create!(
      :name => "MyText"
    ))
  end

  it "renders the edit list form" do
    render

    assert_select "form[action=?][method=?]", list_path(@list), "post" do

      assert_select "textarea#list_name[name=?]", "list[name]"
    end
  end
end

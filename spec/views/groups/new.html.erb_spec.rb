require 'rails_helper'

RSpec.describe "groups/new", :type => :view do
  before(:each) do
    assign(:group, Group.new(
      :title => "MyString",
      :leads => "MyString",
      :priority => "MyString",
      :project => nil
    ))
  end

  it "renders new group form" do
    render

    assert_select "form[action=?][method=?]", groups_path, "post" do

      assert_select "input#group_title[name=?]", "group[title]"

      assert_select "input#group_leads[name=?]", "group[leads]"

      assert_select "input#group_priority[name=?]", "group[priority]"

      assert_select "input#group_project_id[name=?]", "group[project_id]"
    end
  end
end

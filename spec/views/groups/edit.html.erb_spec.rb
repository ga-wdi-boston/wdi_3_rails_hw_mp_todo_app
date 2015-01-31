require 'rails_helper'

RSpec.describe "groups/edit", :type => :view do
  before(:each) do
    @group = assign(:group, Group.create!(
      :title => "MyString",
      :leads => "MyString",
      :priority => "MyString",
      :project => nil
    ))
  end

  it "renders the edit group form" do
    render

    assert_select "form[action=?][method=?]", group_path(@group), "post" do

      assert_select "input#group_title[name=?]", "group[title]"

      assert_select "input#group_leads[name=?]", "group[leads]"

      assert_select "input#group_priority[name=?]", "group[priority]"

      assert_select "input#group_project_id[name=?]", "group[project_id]"
    end
  end
end

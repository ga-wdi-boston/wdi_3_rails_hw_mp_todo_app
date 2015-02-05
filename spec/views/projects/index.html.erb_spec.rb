require 'rails_helper'

RSpec.describe "projects/index", :type => :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :title => "Title",
        :status => "Status",
        :leads => "Leads"
      ),
      Project.create!(
        :title => "Title",
        :status => "Status",
        :leads => "Leads"
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Leads".to_s, :count => 2
  end
end

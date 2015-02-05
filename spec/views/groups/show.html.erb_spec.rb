require 'rails_helper'

RSpec.describe "groups/show", :type => :view do
  before(:each) do
    @group = assign(:group, Group.create!(
      :title => "Title",
      :leads => "Leads",
      :priority => "Priority",
      :project => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Leads/)
    expect(rendered).to match(/Priority/)
    expect(rendered).to match(//)
  end
end

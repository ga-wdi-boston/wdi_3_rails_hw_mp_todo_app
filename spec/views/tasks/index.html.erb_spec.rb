require 'rails_helper'

RSpec.describe "tasks/index", :type => :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        :subject => "Subject",
        :lead => "Lead",
        :description => "MyText",
        :priority => "Priority",
        :status => "Status",
        :group => nil
      ),
      Task.create!(
        :subject => "Subject",
        :lead => "Lead",
        :description => "MyText",
        :priority => "Priority",
        :status => "Status",
        :group => nil
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "Lead".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Priority".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

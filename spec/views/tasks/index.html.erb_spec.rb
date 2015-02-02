require 'rails_helper'

RSpec.describe "tasks/index", :type => :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        :title => "MyText",
        :list => nil,
        :completed? => false
      ),
      Task.create!(
        :title => "MyText",
        :list => nil,
        :completed? => false
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end

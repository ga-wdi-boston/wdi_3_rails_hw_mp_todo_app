require 'rails_helper'

RSpec.describe "lists/index", :type => :view do
  before(:each) do
    assign(:lists, [
      List.create!(
        :name => "MyText"
      ),
      List.create!(
        :name => "MyText"
      )
    ])
  end

  it "renders a list of lists" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

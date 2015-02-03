require 'rails_helper'

RSpec.describe "notes/index", :type => :view do
  before(:each) do
    assign(:notes, [
      Note.create!(
        :message => "Message"
      ),
      Note.create!(
        :message => "Message"
      )
    ])
  end

  it "renders a list of notes" do
    render
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end

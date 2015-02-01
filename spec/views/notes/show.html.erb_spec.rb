require 'rails_helper'

RSpec.describe "notes/show", :type => :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :note => "MyText",
      :task => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end

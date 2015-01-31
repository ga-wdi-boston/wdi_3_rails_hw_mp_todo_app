require 'rails_helper'

RSpec.describe "notes/new", :type => :view do
  before(:each) do
    assign(:note, Note.new(
      :message => "MyString"
    ))
  end

  it "renders new note form" do
    render

    assert_select "form[action=?][method=?]", notes_path, "post" do

      assert_select "input#note_message[name=?]", "note[message]"
    end
  end
end

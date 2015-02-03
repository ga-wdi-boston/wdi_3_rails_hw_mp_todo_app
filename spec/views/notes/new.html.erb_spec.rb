require 'rails_helper'

RSpec.describe "notes/new", :type => :view do
  before(:each) do
    assign(:note, Note.new(
      :note_text => "MyText",
      :text_id => 1
    ))
  end

  it "renders new note form" do
    render

    assert_select "form[action=?][method=?]", notes_path, "post" do

      assert_select "textarea#note_note_text[name=?]", "note[note_text]"

      assert_select "input#note_text_id[name=?]", "note[text_id]"
    end
  end
end

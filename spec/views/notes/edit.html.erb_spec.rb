require 'rails_helper'

RSpec.describe "notes/edit", :type => :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :note_text => "MyText",
      :text_id => 1
    ))
  end

  it "renders the edit note form" do
    render

    assert_select "form[action=?][method=?]", note_path(@note), "post" do

      assert_select "textarea#note_note_text[name=?]", "note[note_text]"

      assert_select "input#note_text_id[name=?]", "note[text_id]"
    end
  end
end

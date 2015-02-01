require 'rails_helper'

RSpec.describe "notes/new", :type => :view do
  before(:each) do
    assign(:note, Note.new(
      :note => "MyText",
      :task => nil
    ))
  end

  it "renders new note form" do
    render

    assert_select "form[action=?][method=?]", notes_path, "post" do

      assert_select "textarea#note_note[name=?]", "note[note]"

      assert_select "input#note_task_id[name=?]", "note[task_id]"
    end
  end
end

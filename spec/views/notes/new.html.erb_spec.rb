require 'rails_helper'

RSpec.describe "notes/new", :type => :view do
  before(:each) do
    assign(:note, Note.new(
      :body => "MyText",
      :task => nil
    ))
  end

  it "renders new note form" do
    render

    assert_select "form[action=?][method=?]", notes_path, "post" do

      assert_select "textarea#note_body[name=?]", "note[body]"

      assert_select "input#note_task_id[name=?]", "note[task_id]"
    end
  end
end

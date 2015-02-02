require 'rails_helper'

RSpec.describe "tasks/new", :type => :view do
  before(:each) do
    assign(:task, Task.new(
      :title => "MyText",
      :list => nil,
      :completed? => false
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "textarea#task_title[name=?]", "task[title]"

      assert_select "input#task_list_id[name=?]", "task[list_id]"

      assert_select "input#task_completed?[name=?]", "task[completed?]"
    end
  end
end

require 'rails_helper'

RSpec.describe "tasks/new", :type => :view do
  before(:each) do
    assign(:task, Task.new(
      :name => "MyString",
      :is_completed? => false,
      :list => nil
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input#task_name[name=?]", "task[name]"

      assert_select "input#task_is_completed?[name=?]", "task[is_completed?]"

      assert_select "input#task_list_id[name=?]", "task[list_id]"
    end
  end
end

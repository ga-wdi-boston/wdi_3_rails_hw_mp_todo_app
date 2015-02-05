require 'rails_helper'

RSpec.describe "tasks/new", :type => :view do
  before(:each) do
    assign(:task, Task.new(
      :subject => "MyString",
      :lead => "MyString",
      :description => "MyText",
      :priority => "MyString",
      :status => "MyString",
      :group => nil
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input#task_subject[name=?]", "task[subject]"

      assert_select "input#task_lead[name=?]", "task[lead]"

      assert_select "textarea#task_description[name=?]", "task[description]"

      assert_select "input#task_priority[name=?]", "task[priority]"

      assert_select "input#task_status[name=?]", "task[status]"

      assert_select "input#task_group_id[name=?]", "task[group_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "tasks/edit", :type => :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :subject => "MyString",
      :lead => "MyString",
      :description => "MyText",
      :priority => "MyString",
      :status => "MyString",
      :group => nil
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "input#task_subject[name=?]", "task[subject]"

      assert_select "input#task_lead[name=?]", "task[lead]"

      assert_select "textarea#task_description[name=?]", "task[description]"

      assert_select "input#task_priority[name=?]", "task[priority]"

      assert_select "input#task_status[name=?]", "task[status]"

      assert_select "input#task_group_id[name=?]", "task[group_id]"
    end
  end
end

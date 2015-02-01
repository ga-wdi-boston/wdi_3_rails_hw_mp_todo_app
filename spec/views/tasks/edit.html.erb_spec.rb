require 'rails_helper'

RSpec.describe "tasks/edit", :type => :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :name => "MyString",
      :is_completed? => false,
      :list => nil
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "input#task_name[name=?]", "task[name]"

      assert_select "input#task_is_completed?[name=?]", "task[is_completed?]"

      assert_select "input#task_list_id[name=?]", "task[list_id]"
    end
  end
end

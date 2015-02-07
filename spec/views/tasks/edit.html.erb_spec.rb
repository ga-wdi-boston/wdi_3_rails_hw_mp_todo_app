require 'rails_helper'

RSpec.describe "tasks/edit", :type => :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :name => "MyText",
      :completed? => false,
      :group => nil
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "textarea#task_name[name=?]", "task[name]"

      assert_select "input#task_completed?[name=?]", "task[completed?]"

      assert_select "input#task_group_id[name=?]", "task[group_id]"
    end
  end
end

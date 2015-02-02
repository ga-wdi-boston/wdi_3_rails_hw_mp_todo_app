require 'rails_helper'

RSpec.describe "tasks/edit", :type => :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :title => "MyText",
      :list => nil,
      :completed? => false
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "textarea#task_title[name=?]", "task[title]"

      assert_select "input#task_list_id[name=?]", "task[list_id]"

      assert_select "input#task_completed?[name=?]", "task[completed?]"
    end
  end
end

require 'rails_helper'

RSpec.describe "tasks/show", :type => :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :subject => "Subject",
      :lead => "Lead",
      :description => "MyText",
      :priority => "Priority",
      :status => "Status",
      :group => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/Lead/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Priority/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(//)
  end
end

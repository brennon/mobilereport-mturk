require 'spec_helper'

describe "scripts/new.html.erb" do
  before(:each) do
    assign(:script, stub_model(Script,
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new script form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => scripts_path, :method => "post" do
      assert_select "textarea#script_body", :name => "script[body]"
    end
  end
end

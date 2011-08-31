require 'spec_helper'

describe "scripts/edit.html.erb" do
  before(:each) do
    @script = assign(:script, stub_model(Script,
      :body => "MyText"
    ))
  end

  it "renders the edit script form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => scripts_path(@script), :method => "post" do
      assert_select "textarea#script_body", :name => "script[body]"
    end
  end
end

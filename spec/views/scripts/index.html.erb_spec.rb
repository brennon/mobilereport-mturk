require 'spec_helper'

describe "scripts/index.html.erb" do
  before(:each) do
    assign(:scripts, [
      stub_model(Script,
        :body => "MyText"
      ),
      stub_model(Script,
        :body => "MyText"
      )
    ])
  end

  it "renders a list of scripts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

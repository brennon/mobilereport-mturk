require 'spec_helper'

describe "scripts/show.html.erb" do
  before(:each) do
    @script = assign(:script, stub_model(Script,
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end

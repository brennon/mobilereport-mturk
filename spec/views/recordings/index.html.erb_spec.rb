require 'spec_helper'

describe "recordings/index.html.erb" do
  before(:each) do
    assign(:recordings, [
      stub_model(Recording,
        :gender => "Gender",
        :locale => "Locale",
        :soundfile_file_name => "Soundfile File Name",
        :soundfile_content_type => "Soundfile Content Type"
      ),
      stub_model(Recording,
        :gender => "Gender",
        :locale => "Locale",
        :soundfile_file_name => "Soundfile File Name",
        :soundfile_content_type => "Soundfile Content Type"
      )
    ])
  end

  it "renders a list of recordings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Locale".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Soundfile File Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Soundfile Content Type".to_s, :count => 2
  end
end

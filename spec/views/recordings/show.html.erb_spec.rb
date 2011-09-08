require 'spec_helper'

describe "recordings/show.html.erb" do
  before(:each) do
    @recording = assign(:recording, stub_model(Recording,
      :gender => "Gender",
      :locale => "Locale",
      :soundfile_file_name => "Soundfile File Name",
      :soundfile_content_type => "Soundfile Content Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gender/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Locale/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Soundfile File Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Soundfile Content Type/)
  end
end

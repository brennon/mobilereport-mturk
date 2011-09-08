require 'spec_helper'

describe "recordings/edit.html.erb" do
  before(:each) do
    @recording = assign(:recording, stub_model(Recording,
      :gender => "MyString",
      :locale => "MyString",
      :soundfile_file_name => "MyString",
      :soundfile_content_type => "MyString"
    ))
  end

  it "renders the edit recording form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recordings_path(@recording), :method => "post" do
      assert_select "select#recording_gender", :name => "recording[gender]"
      assert_select "input#recording_locale", :name => "recording[locale]"
      assert_select "input#recording_soundfile", :name => "recording[soundfile]"
    end
  end
end

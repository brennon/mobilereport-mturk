require 'spec_helper'

describe "recordings/new.html.erb" do
  before(:each) do
    assign(:recording, stub_model(Recording,
      :gender => "MyString",
      :locale => "MyString",
      :soundfile_file_name => "MyString",
      :soundfile_content_type => "MyString"
    ).as_new_record)

    assign(:script, stub_model(Script, :body => "An enthralling surveyor's report..."))
  end

  it "renders new recording form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recordings_path, :method => "post" do
      assert_select "select#recording_gender", :name => "recording[gender]"
      assert_select "input#recording_locale", :name => "recording[locale]"
      assert_select "input#recording_soundfile", :name => "recording[soundfile]"
    end
  end

  it 'renders a random script body' do
    render
    rendered.should contain("Script for recording:")
  end
end

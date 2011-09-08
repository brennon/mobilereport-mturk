require 'spec_helper'

describe Recording do
  describe 'validations' do
    let(:valid_params) {{ :gender => 'Male', 
                          :locale => 'Northern Ireland',
                          :soundfile => File.new(Rails.root + 'spec/fixtures/ballsdeep.wav') }}

    it 'should require gender' do
      invalid_params = valid_params.merge(:gender => nil)
      recording = Recording.new(invalid_params)
      recording.should_not be_valid
    end

    it 'should allow "Male" for gender' do
      invalid_params = valid_params.merge(:gender => "man")
      recording = Recording.new(invalid_params)
      recording.should_not be_valid
      fixed_params = invalid_params.merge(:gender => "Male")
      recording = Recording.new(fixed_params)
      recording.should be_valid
    end
    
    it 'should allow "Female" for gender' do
      invalid_params = valid_params.merge(:gender => "woman")
      recording = Recording.new(invalid_params)
      recording.should_not be_valid
      fixed_params = invalid_params.merge(:gender => "Female")
      recording = Recording.new(fixed_params)
      recording.should be_valid
    end

    it 'should require a locale' do
      invalid_params = valid_params.merge(:locale => nil)
      recording = Recording.new(invalid_params)
      recording.should_not be_valid
    end

    it 'should require a soundfile' do
      invalid_params = valid_params.merge(:soundfile => nil)
      recording = Recording.new(invalid_params)
      recording.should_not be_valid
    end

    it 'should only accept wav files' do
      invalid_params = valid_params.merge(:soundfile_content_type => 'audio/mp3')
      recording = Recording.new(invalid_params)
      recording.should_not be_valid
    end
  end

  it 'allows an attached sound file' do
    Recording.should have_attached_file(:soundfile)
  end
end

# == Schema Information
#
# Table name: recordings
#
#  id                     :integer         not null, primary key
#  gender                 :string(255)
#  locale                 :string(255)
#  soundfile_file_name    :string(255)
#  soundfile_content_type :string(255)
#  soundfile_updated_at   :datetime
#  created_at             :datetime
#  updated_at             :datetime
#


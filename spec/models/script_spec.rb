require 'spec_helper'

describe Script do
  describe 'validations' do
    let(:valid_params) { Hash.new(:body => "This is the script body.") }

    it 'should require a body' do
      invalid_params = valid_params.merge(:body => nil)
      script = Script.new(invalid_params)
      script.should_not be_valid
    end
  end
end

# == Schema Information
#
# Table name: scripts
#
#  id         :integer         not null, primary key
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#


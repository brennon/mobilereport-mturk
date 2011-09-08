class Script < ActiveRecord::Base
  validates_presence_of :body

  has_many :recordings

  def self.random
    if (c = count) != 0
      find(:first, :offset =>rand(c))
    else
      Script.new(:body => "There are no scripts available for recording.")
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


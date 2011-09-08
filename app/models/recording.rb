class Recording < ActiveRecord::Base
  validates_presence_of :gender, :locale
  validates_inclusion_of :gender, :in => %w(Male Female)
  validates_attachment_presence :soundfile
  validates_attachment_content_type :soundfile, :content_type => ['audio/x-wav', 'audio/wav']

  has_attached_file :soundfile
  belongs_to :script

  GENDERS = %w[Male Female]
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


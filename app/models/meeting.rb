# == Schema Information
#
# Table name: meetings
#
#  id                  :integer          not null, primary key
#  title               :string
#  organizer_email     :string
#  start_time          :datetime
#  end_time            :datetime
#  audio_file_location :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Meeting < ApplicationRecord
  validates :title, :organizer_email, :start_time,:end_time, presence: true
  has_many :highlights
end

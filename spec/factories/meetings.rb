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

FactoryBot.define do
  factory :meeting do
    title "Meeting"
    organizer_email "test@example.com"
    start_time Time.current
    end_time Time.current + 30.minutes
    audio_file_location 's3/file.wav'
  end
end

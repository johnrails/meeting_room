# == Schema Information
#
# Table name: highlights
#
#  id             :integer          not null, primary key
#  meeting_id     :integer
#  start_time     :datetime
#  end_time       :datetime
#  highlight_text :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Highlight < ApplicationRecord
  belongs_to :meeting
end

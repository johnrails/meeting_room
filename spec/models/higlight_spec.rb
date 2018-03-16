# == Schema Information
#
# Table name: higlights
#
#  id             :integer          not null, primary key
#  meeting_id     :integer
#  start_time     :datetime
#  end_time       :datetime
#  highlight_text :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'rails_helper'

RSpec.describe Higlight, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

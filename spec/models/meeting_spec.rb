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

require 'rails_helper'

RSpec.describe Meeting, type: :model do
  describe 'Validations' do
    context 'valid factory' do
      let(:meeting) { build :meeting }

      it 'will be valid' do
        expect(meeting).to be_valid
      end
    end
    context 'Model Validations' do
      [:title, :organizer_email, :start_time, :end_time].each do |attr|
        it { is_expected.to validate_presence_of(attr)}
      end
    end

    context 'association validations' do
      it {is_expected.to have_many(:highlights)}
    end
  end
end

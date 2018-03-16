require 'rails_helper'

RSpec.describe MeetingsController, type: :controller do
 let!(:meeting) { create :meeting }
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do

    subject { get :show, params: {id: meeting.id }}
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it 'will assign the meeting instance variable' do
      expect(assigns(:meeting)).to eq(meeting)
    end
  end

  describe "GET #new" do
    it 'is successful' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end
  describe "GET #edit" do
    subject { get :edit, params: {id: meeting.id }}
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    let(:meeting_params) do
      {
        title: 'Hello',
        organizer_email: 'test@email.com',
        start_time: Time.now,
        end_time: Time.now + 30.minutes,
        audio_file_location: '/home'
      }
    end

    it 'will create a new meeting' do
      expect {
        post :create, params:{ meeting: meeting_params}
      }.to change(Meeting, :count).by(1)
    end
  end

end

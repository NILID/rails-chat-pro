FactoryBot.define do
  factory :room_message, class: 'RoomMessages' do
    user
    room
  end
end

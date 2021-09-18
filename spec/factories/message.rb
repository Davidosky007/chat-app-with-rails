FactoryBot.define do
  factory :message do
    content { Faker::Lorem.word }
    user_id nil
    chatroom_id nil
  end
end

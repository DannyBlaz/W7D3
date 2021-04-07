FactoryBot.define do
    factory :user do
        username {Faker::Coffee.blend_name}
        session_token {"session"}
    end
end
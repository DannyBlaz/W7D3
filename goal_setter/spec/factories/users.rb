FactoryBot.define do
    factory :user do
        username { Faker::Coffee.blend_name }
        session_token { "session" }
        password_digest { "digest "}
    end
end
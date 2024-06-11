FactoryBot.define do
  factory :movie do
    user
    youtube_url { FFaker::Internet.http_url }
  end
end

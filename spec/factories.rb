FactoryBot.define do
  # to_create do |instance|
  #   unless instance.save
  #     puts instance.inspect
  #     raise "Invalid record: #{instance.errors.full_messages.join(', ')}"
  #   end
  # end

  factory :user do
    after(:build)   { |u| u.skip_confirmation_notification! }
    after(:create)  { |u| u.confirm }
    username Faker::Name.name
    email Faker::Internet.email
    password '12341234'
    password_confirmation '12341234'
  end

  factory :article do
    association :user, factory: :user
    title '좋은 개발팀을 만드는데 도움이 되는 자료'
    url 'https://github.com/leehosung/awesome-devteam'
  end
end

FactoryBot.define do
  to_create do |instance|
    unless instance.save
      puts instance.inspect
      raise "Invalid record: #{instance.errors.full_messages.join(', ')}"
    end
  end
  factory :user do
    username 'USER'
    email 'test@user.com'
    password '12341234'
    password_confirmation '12341234'
  end
end

FactoryGirl.define do
  factory :product_image do
    image "12345678"
    created_at { Faker::Time.between(2.days.ago, Time.now, :all) }
  end
end

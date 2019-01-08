FactoryGirl.define do
  factory :product do
    name "テスト服"
    detail "テスト説明"
    seller 1
    category_id 34
    condition 3
    area_id 23
    shipmentday 3
    size_id 2
    price 300
  end
end

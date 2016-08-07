FactoryGirl.define do
  factory :article do
    title "MyString"
    body "MyText"
    private false
    user nil
  end
end

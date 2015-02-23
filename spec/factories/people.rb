FactoryGirl.define do
  factory :person do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    sex { 'M' }
    birth_date { Faker::Date.between(Date.new(1960), Date.new(2000)) }

    trait :female do
      sex { 'F' }
    end

    trait :with_parents do
      association :father, factory: :person
      association :mother, factory: :person, sex: 'F'
    end
  end
end

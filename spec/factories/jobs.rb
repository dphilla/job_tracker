FactoryGirl.define do
  factory :job do

      sequence :title do |t|
        "job #{t}"
      end
      description "something"

      sequence :level_of_interest do |t|
        t
      end

      company
      city "city o city"
      category
    end
end

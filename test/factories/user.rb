FactoryGirl.define do

  sequence(:name) { |n| "User#{n}" }

	factory :user do |user|
		name "User"
	end
end
Fabricator(:card) do
  front { Faker::Hacker.noun }
  back { Faker::Hacker.say_something_smart }
  created_at "2017-04-25 01:32:50.300278"
  updated_at "2017-04-25 01:32:50.329867"
  category
end
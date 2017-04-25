Fabricator(:user) do
  email { Faker::Internet.email }
  password "1234567890"
  sign_in_count 1
  current_sign_in_at "2017-04-25 01:32:50.327580"
  last_sign_in_at "2017-04-25 01:32:50.327580"
  current_sign_in_ip "10.240.0.204"
  last_sign_in_ip "10.240.0.204"
  created_at "2017-04-25 01:32:50.300278"
  updated_at "2017-04-25 01:32:50.329867"
end
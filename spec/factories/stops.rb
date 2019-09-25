FactoryBot.define do
  factory :stop do
    incident_number { "MyString" }
    priority_description { "MyString" }
    problem { "MyString" }
    address { "MyString" }
    call_class { "MyString" }
    time_phonepickup { "2019-09-24 19:58:46" }
    call_disposition { "MyString" }
    geo_x { 1.5 }
    geo_y { 1.5 }
    geo_lon { 1.5 }
    geo_lat { 1.5 }
    district_id { "MyString" }
    neighborhood_name { "MyString" }
  end
end

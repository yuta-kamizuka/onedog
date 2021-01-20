FactoryBot.define do

  factory :user do
    nickname              {"hoge"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    password_confirmation {"00000000"}
    first_name            {"太郎"}
    family_name           {"日本"}
    first_name_kana       {"タロウ"}
    family_name_kana      {"ニホン"}
    phone                 {"08000000000"}
  end
end
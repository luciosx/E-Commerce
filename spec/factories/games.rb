FactoryBot.define do
  factory :game do
    mode { [:pvp, :pve, :both].sample } #gera valores aleátorios entre os definidos
    release_date { "2020-11-26 10:57:52" }
    developer { Faker::Company.name }
    system_requirement
  end
end

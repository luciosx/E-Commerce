FactoryBot.define do
  factory :system_requirement do
    sequence (:name) { |n| "Basic #{n}" }
    operational_system { Faker::Computer.os }
    storage { "500gb" }
    processor { "Intel core 7" }
    memory { "4gb" }
    video_board { "GeForce 1050TI" }
  end
end

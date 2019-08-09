require_relative("../models/booking.rb")
require_relative("../models/gym_class.rb")
require_relative("../models/member.rb")
require("pry-byebug")

member1 = Member.new({
  "name" => "Seth Jacob",
  "membership" => "Premium"
  })

member2 = Member.new({
  "name" => "Joe Davis",
  "membership" => "Premium"
  })

member3 = Member.new({
  "name" => "James McAvoy",
  "membership" => "Standard"
  })



gym_class1 = GymClass.new({
  "name" => "Spin",
  "timec" => 13.00,
  "capacity" => 25
  })

gym_class1 = GymClass.new({
  "name" => "Circuit",
  "timec" => 14.00,
  "capacity" => 20
  })

gym_class1 = GymClass.new({
  "name" => "Zumba",
  "timec" => 16.00,
  "capacity" => 25
  })



booking1 = Booking.new({
  "member_id" => member1.id,
  "class_id" => gym_class1.id
  })

booking2 = Booking.new({
  "member_id" => member2.id,
  "class_id" => gym_class2.id
  })

booking1 = Booking.new({
  "member_id" => member3.id,
  "class_id" => gym_class3.id
  })

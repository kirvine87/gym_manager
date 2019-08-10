require_relative("../models/booking.rb")
require_relative("../models/gym_class.rb")
require_relative("../models/member.rb")
require("pry-byebug")

Member.delete_all()

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

member1.save()
member2.save()
member3.save()

# member1.delete()


gym_class1 = GymClass.new({
  "name" => "Spin",
  "timec" => 13.00,
  "capacity" => 25
  })

gym_class2 = GymClass.new({
  "name" => "Circuit",
  "timec" => 14.00,
  "capacity" => 20
  })

gym_class3 = GymClass.new({
  "name" => "Zumba",
  "timec" => 16.00,
  "capacity" => 25
  })

gym_class1.save()
gym_class2.save()
gym_class3.save()

booking1 = Booking.new({
  "member_id" => member1.id,
  "gym_class_id" => gym_class1.id
  })

booking2 = Booking.new({
  "member_id" => member2.id,
  "gym_class_id" => gym_class2.id
  })

booking3 = Booking.new({
  "member_id" => member3.id,
  "gym_class_id" => gym_class3.id
  })



  # binding.pry
  #
  # nil

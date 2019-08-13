require_relative('../models/gym_class.rb')
require_relative('../models/member.rb')
require_relative('../models/booking.rb')

#INDEX
get '/bookings' do
  @bookings = Booking.all()
  @members = Member.all()
  @gclasses = GymClass.all()
  erb(:"bookings/index")
end

#NEW
get '/bookings/new' do
  @members = Member.all()
  @gclasses = GymClass.all()
  @sclasses = GymClass.sall()
  erb(:"bookings/new")
end

#CREATE
post '/bookings' do
  booking = Booking.new(params)
  booking.save()
  redirect '/bookings'
end

#DELETE
post '/bookings/:id/delete' do
  id = params[:id].to_i()
  @booking = Booking.find(id)
  @booking.delete()
  redirect '/bookings'
  erb(:"bookings/index")
end

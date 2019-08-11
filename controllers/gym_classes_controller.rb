require_relative('../models/gym_class.rb')

#INDEX
get '/gymclasses' do
  @gclasses = GymClass.all()
  erb(:"gym_classes/index")
end

#NEW
get '/gym_classes/new' do
  @timec = [13.00, 14.00, 16.00 ]
  erb(:"gym_classes/new")
end

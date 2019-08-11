require_relative('../models/gym_class.rb')

#INDEX
get '/gymclasses' do
  @gclasses = GymClass.all()
  erb(:"gym_classes/index")
end

#NEW
get '/gymclasses/new' do
  @timesc = [13.00, 14.00, 16.00 ]
  erb(:"gym_classes/new")
end

#CREATE
post '/gymclasses' do
  @timesc = [13.00, 14.00, 16.00 ]
  gclass = GymClass.new(params)
  gclass.save()
  redirect "/gymclasses"
end

#EDIT
get '/gymclasses/:id/edit' do
  id = params[:id].to_i()
  @timesc = [13.00, 14.00, 16.00 ]
  @gclass = GymClass.find(id)
  erb(:"gym_classes/edit")
end

#UPDATE
post '/gymclasses/:id' do
  gclass = GymClass.new(params)
  gclass.update()
  redirect('/gymclasses')
end

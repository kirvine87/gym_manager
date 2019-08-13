require_relative('../models/gym_class.rb')
require_relative('../models/member.rb')


#INDEX
get '/gymclasses' do
  @gclasses = GymClass.all()
  erb(:"gym_classes/index")
end

#NEW
get '/gymclasses/new' do
  @timesc = [6.00, 7.00, 8.00, 9.00, 10.00, 11.00, 12.00,
    13.00, 14.00, 15.00, 16.00, 17.00, 18.00, 19.00, 20.00 ]
  erb(:"gym_classes/new")
end

#CREATE
post '/gymclasses' do
  @timesc = [6.00, 7.00, 8.00, 9.00, 10.00, 11.00, 12.00,
    13.00, 14.00, 15.00, 16.00, 17.00, 18.00, 19.00, 20.00 ]
  gclass = GymClass.new(params)
  gclass.save()
  redirect "/gymclasses"
end

#EDIT
get '/gymclasses/:id/edit' do
  id = params[:id].to_i()
  @timesc = [6.00, 7.00, 8.00, 9.00, 10.00, 11.00, 12.00,
    13.00, 14.00, 15.00, 16.00, 17.00, 18.00, 19.00, 20.00 ]
  @gclass = GymClass.find(id)
  erb(:"gym_classes/edit")
end

#UPDATE
post '/gymclasses/:id' do
  gclass = GymClass.new(params)
  gclass.update()
  redirect('/gymclasses')
end

#DELETE
post '/gymclasses/:id/delete' do
  id = params[:id].to_i()
  @gclass = GymClass.find(id)
  @gclass.delete()
  redirect('/gymclasses')
  erb(:"gym_classes/index")
end

#SORT BY TIME
get '/gymclasses/sort' do
  @gclasses = GymClass.sort()
  erb(:"gym_classes/index")
end

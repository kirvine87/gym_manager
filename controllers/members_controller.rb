require_relative('../models/member.rb')

#INDEX
get '/members' do
  @members = Member.all()
  erb(:"members/index")
end

#NEW
get '/members/new' do
  @memberships = ["Standard", "Premium"]
  erb(:"members/new")
end

#CREATE
post '/members' do
  @memberships = ["Standard", "Premium"]
  member = Member.new(params)
  member.save()
  redirect "/members"
end

#EDIT
get '/members/:id/edit' do
  id = params[:id].to_i()
  @memberships = ["Standard", "Premium"]
  @member = Member.find(id)
  erb(:"members/edit")
end

#UPDATE
post '/members/:id' do
  member = Member.new(params)
  member.update()
  redirect('/members')
end

#DELETE
post '/members/:id/delete' do
  id = params[:id].to_i()
  @member = Member.find(id)
  @member.delete()
  redirect('/members')
  erb(:"members/index")
end

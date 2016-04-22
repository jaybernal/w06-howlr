############NEW
get "/wolves/new/?" do
	@wolf = Wolf.new
	erb :"wolves/new"
end

############CREATE
post "/wolves/?" do
	@wolf = Wolf.new(params)
	if @wolf.save
		redirect("/wolves")
	else
		erb :"wolves/new"
	end
end

############INDEX
get "/wolves/?" do
	@wolves = Wolf.all
	erb :"wolves/index"
end

############SHOW
get "/wolves/:id/?" do
	@wolf = Wolf.find_by_id(params["id"])
	erb :"wolves/show"
end

############EDIT
get "/wolves/:id/edit" do
	@wolf = Wolf.find_by_id(params["id"])
	erb :"wolves/edit"
end

################# update
patch "/wolves/:id/?" do
  @wolf = Wolf.find_by_id(params["id"])
  if @wolf.update_attributes(name: 				params["name"],
                            image: 				params["image"],
                            description: 	params["description"])
    redirect to("/wolves/#{@wolf.id}")
  else
    erb :"wolves/edit"
  end
end


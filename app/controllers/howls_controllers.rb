############NEW
get "/howls/new/?" do
	@howl = Howl.new
	@wolves = Wolf.all
	erb :"howls/new"
end

############CREATE
post "/howls/?" do
	@howl = Howl.new(params)
	if @howl.save
		redirect("/howls")
	else
		erb :"howls/new"
	end
end

############INDEX
get "/howls/?" do
	@howls = Howl.all
	@wolves = Wolf.all
	erb :"howls/index"
end

############SHOW
get "/howls/:id/?" do
	@howl = Howl.find_by_id(params["id"])
	erb :"howls/show"
end

############EDIT
get "/howls/:id/edit" do
	@howl = Howl.find_by_id(params["id"])
	erb :"howls/edit"
end

################# update
patch "/howls/:id/?" do
  @howl = Howl.find_by_id(params["id"])
  if @howl.update_attributes(text: params["text"],
                            image: params["image"])
    redirect to{"howls/#{@howl.id}"}
  else
    erb :"howls/edit"
  end
end
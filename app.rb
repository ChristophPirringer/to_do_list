require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/todo")

get("/")do
  @tasks = Task.all()
  erb(:index)
end

post("/success") do
  description = params.fetch("description")
  task = Task.new(description)
  task.save()
  erb(:success)
end

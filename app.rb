require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/about") do
  erb(:homepage)
end

get("/aff") do
  erb(:new_aff)
end

get("/aff/results") do
  affirmations = [
    "This is what I can handle right now, and that is okay",
    "I haven't figured it out yet",
    "Now that I know I can do better",
    "This is what I can handle right now",
    "My body does not define my worth",
    "I am allowed to make mistakes",
    "Some day are harder than others: I am doing my best today"
  ]
  i = rand(0..6)
  @output = affirmations[i]
  erb(:aff_results)
end

get("/contact") do
  erb(:new_contact)
end

get("/contact/results") do
  @first_name = params.fetch("firstname")
  erb(:contact_results)
end

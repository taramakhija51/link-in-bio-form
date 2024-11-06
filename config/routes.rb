Rails.application.routes.draw do

  get("/", { :controller => "items", :action => "index" })
  get("/backdoor", { :controller => "items", :action => "backdoor_form" })
  post("/backdoor_form", { :controller => "items", :action => "backdoor_results" })
end

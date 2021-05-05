Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/eldest", { :controller => "directors", :action => "wisest" })

  get("/directors/youngest", { :controller => "directors", :action => "young" })

  get("/movies", { :controller => "movies", :action => "index" })

  get("/actors", { :controller => "actors", :action => "index" })

  get("/directors/:dir_id", { :controller => "directors", :action => "director_details" })

  get("/actors/:actor_id", { :controller => "actors", :action => "actor_details" })

end

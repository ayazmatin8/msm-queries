class ActorsController < ApplicationController
  
  def index
    @list_of_actors = Actor.all
    render({ :template => "actor_templates/index.html.erb"})
  end

  def actor_details
    an_id = params.fetch("actor_id")
    @the_actor = Actor.where({ :id => an_id }).at(0)
    render({ :template => "actor_templates/details.html.erb"})
  end
end
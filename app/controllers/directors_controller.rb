class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
    render({ :template => "director_templates/index.html.erb"})
  end

  def wisest
    @oldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
    render({ :template => "director_templates/eldest.html.erb"})
  end

  def young
    @youngest = Director.where.not({ :dob => nil }).order({ :dob => :desc }).at(0)
    render({ :template => "director_templates/youngest.html.erb"})
  end

  def director_details
    an_id = params.fetch("dir_id")
    @the_director = Director.where({ :id => an_id }).at(0)
    @filmography = Movie.where({ :director_id => @the_director.id})
    render({ :template => "director_templates/details.html.erb"})
  end
end
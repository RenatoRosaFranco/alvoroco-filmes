class HomeController < ApplicationController
  def index
  	@newsletter = Newsletter.new
  	@projects = Project.friendly.all 
  	@movies = Movie.friendly.all
  	@contact = Contact.new
  end
end

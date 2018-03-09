class HomeController < ApplicationController
  def index
  	@projects = Project.all 
  	@movies = Movie.all
  	@contact = Contact.new
  end
end

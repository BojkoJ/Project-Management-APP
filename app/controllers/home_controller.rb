class HomeController < ApplicationController

  before_action :index

   def index
    unless session[:redirected]
      redirect_to new_user_registration_path
      
      session[:redirected] = true
    end
  end
end

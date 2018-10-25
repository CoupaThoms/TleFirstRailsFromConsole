class ApplicationController < ActionController::Base
  # #######################################################################
  # THIS IS THE PARENT CONTROLLER OF ALL THE CONTROLLERS IN THE SYSTEM !! #
  # #######################################################################


  #You can find it in devise_whitelist.rb
  include DeviseWhitelist

  before_action :set_source

  def set_source
    session[:getVarInSession] = params[:q] if params[:q]


  end




end

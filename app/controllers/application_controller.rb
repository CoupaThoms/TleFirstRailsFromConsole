class ApplicationController < ActionController::Base
  # #######################################################################
  # THIS IS THE PARENT CONTROLLER OF ALL THE CONTROLLERS IN THE SYSTEM !! #
  # #######################################################################


  #You can find it in devise_whitelist.rb IN THE CONCERNS folder
  include DeviseWhitelist

  #You can find it in set_source.rb
  include SetSource

  include CurrentUserConcern
  include DefaultPageContent

end

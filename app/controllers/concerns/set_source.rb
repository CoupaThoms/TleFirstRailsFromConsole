module SetSource
  ####################################################################
  #The name is the same as the file name but capital when we have _ !!
  ####################################################################

  extend ActiveSupport::Concern

  included do
    before_action :set_source
  end

  def set_source
    session[:getVarInSession] = params[:q] if params[:q]
  end

end



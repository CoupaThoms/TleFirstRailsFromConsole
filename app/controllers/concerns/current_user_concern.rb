module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user #ici soit on a la methode super qui va prendre le current_user du plugin devise qu'on a installé sinon notre methode qui fait un fake Guest user.
  end

  def guest_user
    OpenStruct.new(name: "Guest user",
                            first_name: "Guest",
                            last_name: "User",
                            email: "guest@exemple.com")
  end
  
end
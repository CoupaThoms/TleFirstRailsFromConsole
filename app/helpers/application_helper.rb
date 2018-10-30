module ApplicationHelper

  def login_helper

    if current_user.is_a?(User) # if it is an "fake" Guest user it is type OpenStruct %>
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      # si on met pas les () avec le + ruby retourne juste Login car il retourne que le dernier.
      (link_to "Sign up", new_user_registration_path) +
      "<br>".html_safe +
      (link_to "Login", new_user_session_path)
    end

  end
end

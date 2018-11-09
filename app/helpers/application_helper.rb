module ApplicationHelper

  #ici on peut voir qu'on met pas les () pour les arguments c'est au choix
  def login_helper style

    if current_user.is_a?(GuestUser) # if it is an "fake" Guest user it is type OpenStruct or the one we created%>
      # si on met pas les () avec le + ruby retourne juste Login car il retourne que le dernier.
      (link_to "Sign up", new_user_registration_path, class: style) +
          " ".html_safe +
          (link_to "Login", new_user_session_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end

  def login_helper_blogs

    if current_user.is_a?(GuestUser) # if it is an "fake" Guest user it is type OpenStruct or the one we created%>
      # si on met pas les () avec le + ruby retourne juste Login car il retourne que le dernier.
      "<div class = 'col-4 pt-1'>".html_safe + (link_to "Sign up", new_user_registration_path, class: "text-muted") +
          " ".html_safe +
          (link_to "Login", new_user_session_path, class: "text-muted")
      + "</div>".html_safe
    else
      "<div class = 'col-4 pt-1'>".html_safe + (link_to "Logout", destroy_user_session_path, method: :delete, class: "text-muted") + "</div>".html_safe
    end
  end

  def sample_helper
    content_tag(:div, "My content", class: "my-class")
  end

    def source_helper(layout_name)
    if session[:getVarInSession]
      greeting = "Thanks for visiting me from  #{session[:getVarInSession]} and you are on the #{layout_name}"
      content_tag(:p, greeting, class: "source-greeting")
    end
    end

  def copyright_generator
    @copyright = CoupaSnakeViewTool::Renderer.copyright 'Thomas Lefèvre', 'All rights reserved'
    #THIS IS USING MY GEM coupa_snake_view_tool
  end

end

module ApplicationHelper

  def helper_picture_url(universe)
    if universe.photo?
      cl_image_path(universe.photo.path)
    else
      "http://static.wixstatic.com/media/b6a999_c97c7e56d74149a9aed270cc83927158.jpg"
    end
  end
end
def helper_user_picture_tag(user)
  if user.photo?
    image_tag("git.jpg", class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown")
  else
    image_tag("git.jpg", class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown")
  end
end

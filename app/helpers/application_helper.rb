module ApplicationHelper

  def helper_picture_url(universe)
    if universe.photo?
      cl_image_path(universe.photo.path)
    else
      "http://static.wixstatic.com/media/b6a999_c97c7e56d74149a9aed270cc83927158.jpg"
    end
  end
end

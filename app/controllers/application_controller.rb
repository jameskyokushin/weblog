class ApplicationController < ActionController::Base
  protect_from_forgery

  # Return a title on a per-page basis.
  def title
    base_title = "James Martin Dela Cruz"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end

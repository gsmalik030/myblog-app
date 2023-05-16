class ApplicationController < ActionController::Base
  # Your controller code here
  def current_user
    User.first
  end
end

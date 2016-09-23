class ApplicationController < ActionController::Base
  include Authentication
  protect_from_forgery with: :exception

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end

class ApplicationController < ActionController::Base
  protect_from_forgery
  enable_authorization
end

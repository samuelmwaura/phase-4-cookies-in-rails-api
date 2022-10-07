class ApplicationController < ActionController::API
  include ActionController::Cookies  #This makes sure that it is used by all the controllers that inherit from this one
end

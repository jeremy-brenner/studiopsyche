class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include SessionsHelper
  
  before_action :authorize, only: [ :edit, :update, :destroy ]

  protect_from_forgery with: :exception

  
end

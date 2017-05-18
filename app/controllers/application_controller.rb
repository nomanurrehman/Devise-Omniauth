class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # redirect to dashboard index after
  # devise sign in
  def after_sign_in_path_for(resource)
    dashboard_index_path
  end

  # redirect to session new after
  # devise sign out
  def after_sign_out_path_for(resource)
    new_user_session_path
  end
end

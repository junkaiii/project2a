module SessionsHelper

  #Logs in given user
  def log_in(user)
    session[:user_id] = user.id
  end

  # Get current user from session id
  def current_user
  @current_user ||= User.find_by(id: session[:user_id])
  end

  # Check if current user is nil
  def logged_in?
    current_user
  end

  #Logs out current user
  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

end

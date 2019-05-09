class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  def welcome
    redirect_to login_path
  end

  def current_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
    end
  end

  def create_access?(access_type_arr)
    access_type_arr.include?(current_user.user_type)
  end

  def authenticate(access_type_arr,redirect_path)
     redirect_to(redirect_path) unless create_access?(access_type_arr)
  end

  def user_authenticate
    user_id = User.find(params[:id]).id
    redirect_path = User.find(params[:id])
    redirect_to(redirect_path) unless user_id == session[:user_id]
  end

  def competition_authenticate
    authenticate(['Competition Manager'],competitions_path)
  end

  def competition_user_authinticate
    user_id = Competition.find(params[:id]).competition_manager_id
    redirect_path = competitions_path
    redirect_to(redirect_path) unless user_id == session[:user_id]
  end

  def event_authenticate
    authenticate(['Competition Manager','Event Manager'],events_path)
  end

  def event_user_authenticate
    user_id = Event.find(params[:id]).event_manager_id
    redirect_path = events_path
    redirect_to(redirect_path) unless user_id == session[:user_id]
  end

  def team_authenticate
    authenticate(['Team Manager','Competition Manager'],teams_path)
  end

  def team_user_authenticate
    user_id = Team.find(params[:id]).team_manager_id
    redirect_path = teams_path
    redirect_to(redirect_path) unless user_id == session[:user_id]
  end

  def athlete_authenticate
    authenticate(['Team Manager','Competition Manager'],teams_path)
  end

  def athlete_user_authenticate
    user_id = Athlete.find(params[:id]).team.team_manager_id
    redirect_path = teams_path
    redirect_to(redirect_path) unless user_id == session[:user_id]
  end

end

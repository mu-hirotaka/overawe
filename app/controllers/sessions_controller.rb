class SessionsController < ApplicationController
  def callback
    auth = request.env['omniauth.auth']
    user = User.find_by_provider_and_uid(auth['provider'], auth['uid'])
    if user
      session[:user_id] = user.id
      redirect_to root_url, :notice => 'Signed in!'
    else
      User.create_with_omniauth(auth)
      user = User.find_by_provider_and_uid(auth['provider'], auth['uid'])
      session[:user_id] = user.id
      redirect_to root_url, :notice => 'Signed in!'
    end
#    raise request.env['omniauth.auth'].to_yaml
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => 'Signed out!'
  end
end

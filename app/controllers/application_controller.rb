class ApplicationController < ActionController::Base
  helper_method :current_user
  
  private

  # ログインしているユーザーを取得
  def current_user
    if session[:login_uid]
      User.find_by(uid: session[:login_uid])
    end
  end

  # ユーザーが認証済みかを確認
  def authenticate_user
    unless session[:login_uid]
      redirect_to login_path, alert: "ログインしてください。"
    end
  end
end
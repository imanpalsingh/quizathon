class Users::SessionsController < Devise::SessionsController
  before_action :destroy_user_quiz_sessions, only: :destroy

  def destroy_user_quiz_sessions
    current_user.user_quiz_sessions.destroy_all
  end
end

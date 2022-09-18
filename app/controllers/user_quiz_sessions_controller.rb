class UserQuizSessionsController < ApplicationController
  before_action :authenticate_user!

  def update
    user_quiz_session = current_user.user_quiz_sessions.first
    question = Question.find(params[:user_quiz_session][:question][:id])
    user_quiz_session.current_question = question.id
    is_correct? ? user_quiz_session.update_score(question.points) : user_quiz_session.touch
  end

  private

  def is_correct?
    params[:user_quiz_session][:question][:choice][:is_correct] == 'true'
  end
end
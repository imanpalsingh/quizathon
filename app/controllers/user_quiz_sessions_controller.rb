class UserQuizSessionsController < ApplicationController
  before_action :authenticate_user!

  def update
    user_quiz_session = UserQuizSession.find(params[:id])
    question = Question.find(params[:user_quiz_session][:question][:id])
    is_correct? ? user_quiz_session.update_score(question.points) : return
  end

  private

  def is_correct?
    params[:user_quiz_session][:question][:choice][:is_correct] == 'true'
  end
end

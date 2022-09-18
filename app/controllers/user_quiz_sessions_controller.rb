class UserQuizSessionsController < ApplicationController
  before_action :authenticate_user!

  def update
    user_quiz_session = UserQuizSession.find(params[:id])
    question = user_quiz_session.quiz.questions.find(uqs_params[:question][:id])
    user_quiz_session.current_question = question.id
    is_correct?(question) ? user_quiz_session.update_score(question.points) : user_quiz_session.touch
  end

  private

  def is_correct?(question)
    choice_id = uqs_params[:question][:choice][:id]
    question.is_choice_correct?(choice_id)
  end

  def uqs_params
    params.require(:user_quiz_session).permit(
      question: [:id, choice: [:id]]
    )
  end
end

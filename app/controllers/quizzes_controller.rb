class QuizzesController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_quiz, only: [:show]
  before_action :find_or_create_quiz_session, only: [:show]
  before_action :destroy_user_quiz_sessions, only: [:index]

  skip_before_action :verify_authenticity_token, only: [:update]

  def index
    @quizzes = Quiz.all.order(created_at: :asc)
  end

  def show
    @user_quiz_sessions = @quiz.user_quiz_sessions.order('score DESC')
    @user_quiz_session = current_user.user_quiz_sessions.find_by(quiz_id: @quiz.id)
    @user = current_user
  end

  def update
    quiz = Quiz.find(params[:id])

    case params[:commit]
    when 'start'
      quiz.update(active: true, user_id: current_user.id)
    when 'reset'
      quiz.update(active: false, user_id: nil)
      quiz.user_quiz_sessions.destroy_all
      redirect_to root_path
    end
  end

  private

  def fetch_quiz
    @quiz = Quiz.find_by!(permalink: params[:permalink])
  end

  def find_or_create_quiz_session
    UserQuizSession.find_or_create_by!(user: current_user, quiz: @quiz)
  end

  def destroy_user_quiz_sessions
    current_user.user_quiz_sessions.destroy_all
  end
end

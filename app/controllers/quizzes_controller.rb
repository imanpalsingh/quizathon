class QuizzesController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_quiz, only: [:show]
  before_action :find_or_create_quiz_session, only: [:show]

  def index
    @quizzes = Quiz.all
  end

  def show
    @user_quiz_sessions = @quiz.user_quiz_sessions.order('score DESC')
  end

  private

  def fetch_quiz
    @quiz = Quiz.find_by!(permalink: params[:permalink])
  end

  def find_or_create_quiz_session
    UserQuizSession.find_or_create_by!(user: current_user, quiz: @quiz)
  end
end

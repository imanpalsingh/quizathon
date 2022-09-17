class QuizzesController < ApplicationController
  before_action :authenticate_user!
  before_action :fetch_quiz, only: [:show]
  before_action :find_or_create_quiz_session, only: [:show]

  def index
    @quizzes = Quiz.all
  end

  def show
    @users = @quiz.users
  end

  private

  def fetch_quiz
    @quiz = Quiz.find(params[:permalink])
  end

  def find_or_create_quiz_session
    UserQuizSession.first_or_create(user: current_user, quiz: @quiz)
  end
end

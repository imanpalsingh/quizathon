class Quiz < ApplicationRecord
  has_many :questions
  has_many :user_quiz_sessions
  has_many :users, through: :user_quiz_sessions

  before_create :generate_unique_permalink
  after_update_commit :broadcast_start_quiz, if: :saved_change_to_active?

  def generate_unique_permalink
    self.permalink = SecureRandom.uuid
  end

  def broadcast_start_quiz
    broadcast_replace partial: 'shared/quiz/quiz_start',
                      locals: { questions: questions },
                      target: 'quiz-menu'

  end


  def next_question(question)
    position = questions.find(question).position

    questions.where("position > ?", position).first
  end
end

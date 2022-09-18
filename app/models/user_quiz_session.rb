class UserQuizSession < ApplicationRecord
  belongs_to :user
  belongs_to :quiz

  attr_accessor :current_question

  after_create_commit do
    broadcast_append_to 'user_quiz_sessions_stream',
                        partial: 'shared/leaderboard/item',
                        locals: { user: user },
                        target: 'users-list'
  end

  after_update_commit do
    broadcast_replace_to 'user_quiz_sessions_stream',
                          partial: 'shared/leaderboard/list',
                          locals: { data: quiz.user_quiz_sessions.order('score DESC') },
                          target: 'user_quiz_sessions'
  end

  after_update_commit do
    broadcast_replace_to user,
                         partial: 'shared/quiz/quiz_start',
                         locals: { question: quiz.next_question(current_question) , user_quiz_session: self },
                         target: 'user_quiz_sessions_questions'
  end

  def update_score(new_points)
    total_score = score + new_points
    update(score: total_score)
  end
end

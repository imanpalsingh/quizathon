class AddDefaultScoreToUserQuizSession < ActiveRecord::Migration[7.0]
  def change
    change_column_default :user_quiz_sessions, :score, to: 0
  end
end

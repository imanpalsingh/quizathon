class AddDefaultScoreToUseerQuizSession < ActiveRecord::Migration[7.0]
  def change
    change_column :user_quiz_sessions, :score, :integer, :default => 0
  end
end

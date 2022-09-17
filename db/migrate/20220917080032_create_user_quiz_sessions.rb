class CreateUserQuizSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :user_quiz_sessions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :quiz, null: false, foreign_key: true
      t.integer :score
      t.boolean :active

      t.timestamps
    end
  end
end

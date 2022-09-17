class CreateQuizzes < ActiveRecord::Migration[7.0]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.string :permalink
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
    add_index :quizzes, :permalink
  end
end

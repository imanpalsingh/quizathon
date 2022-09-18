class AddActiveToQuizzes < ActiveRecord::Migration[7.0]
  def change
    add_column :quizzes, :active, :boolean, default: false
  end
end

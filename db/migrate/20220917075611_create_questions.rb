class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.references :quiz, null: false, foreign_key: true
      t.string :text
      t.integer :points
      t.integer :duration

      t.timestamps
    end
  end
end

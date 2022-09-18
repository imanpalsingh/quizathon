# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# creats users
User.create(first_name: 'Krishna', last_name: 'Singh', email: 'krishna@example.com', password: 'password')
User.create(first_name: 'Imanpal', last_name: 'Singh', email: 'imanpal@example.com', password: 'password')
User.create(first_name: 'Prayesh', last_name: 'Shah', email: 'prayesh@example.com', password: 'password')
User.create(first_name: 'Ayush', last_name: 'Billore', email: 'ayush@example.com', password: 'password')

# creats quizs
Quiz.create(title: 'ActiveRecord')

# create questions
Question.create(quiz_id: 1, text: 'What is 2+2/2', points: 10)
Question.create(quiz_id: 1, text: 'What is 2*2/2', points: 10)

# create chioces
Choice.create(question_id: 1, text: '2', is_correct: false)
Choice.create(question_id: 1, text: '3', is_correct: true)
Choice.create(question_id: 1, text: '1', is_correct: false)
Choice.create(question_id: 1, text: '4', is_correct: false)

Choice.create(question_id: 2, text: '2', is_correct: true)
Choice.create(question_id: 2, text: '3', is_correct: false)
Choice.create(question_id: 2, text: '1', is_correct: false)
Choice.create(question_id: 2, text: '4', is_correct: false)

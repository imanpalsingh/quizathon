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

# Quiz 1
Quiz.create(title: 'Ruby on Rails')

# Question1
Question.create(quiz_id: 1, text: 'Ruby was developed in mid', points: 10, position: 1)

Choice.create(question_id: 1, text: '1960s', is_correct: false)
Choice.create(question_id: 1, text: '1990s', is_correct: true)
Choice.create(question_id: 1, text: '1920s', is_correct: false)
Choice.create(question_id: 1, text: '2000s', is_correct: false)

# Question 2
Question.create(quiz_id: 1, text: 'Programming language which is an open-source, object oriented programming language with simple syntax similar to Perl and Python is', points: 10, position: 2)

Choice.create(question_id: 2, text: 'Ruby', is_correct: true)
Choice.create(question_id: 2, text: 'C', is_correct: false)
Choice.create(question_id: 2, text: 'C++', is_correct: false)
Choice.create(question_id: 2, text: 'Java', is_correct: false)

# Question 3
Question.create(quiz_id: 1, text: 'A web application development framework written in the Ruby language is', points: 10, position: 3)

Choice.create(question_id: 3, text: 'Rails', is_correct: true)
Choice.create(question_id: 3, text: 'Django', is_correct: false)
Choice.create(question_id: 3, text: 'Flask', is_correct: false)
Choice.create(question_id: 3, text: 'Spring', is_correct: false)

# Question 4
Question.create(quiz_id: 1, text: 'What is the extension used for saving the ruby file?', points: 10, position: 4)

Choice.create(question_id: 4, text: '.r', is_correct: false)
Choice.create(question_id: 4, text: '.rb', is_correct: true)
Choice.create(question_id: 4, text: '.ruby', is_correct: false)
Choice.create(question_id: 4, text: '.ry', is_correct: false)


# Quiz 2
Quiz.create(title: 'Science')

# Question 1
Question.create(quiz_id: 2, text: 'In what type of matter are atoms most tightly packed?', points: 10, position: 1)

Choice.create(question_id: 5, text: 'Plasma', is_correct: false)
Choice.create(question_id: 5, text: 'Solids', is_correct: true)
Choice.create(question_id: 5, text: 'Gases', is_correct: false)
Choice.create(question_id: 5, text: 'Liquid', is_correct: false)

# Question 2
Question.create(quiz_id: 2, text: 'What is the hottest planet in the solar system?', points: 10, position: 2)

Choice.create(question_id: 6, text: 'Venus, with a temperature of 460 °C', is_correct: true)
Choice.create(question_id: 6, text: 'Mecury, with a temperature of 460 °C', is_correct: false)
Choice.create(question_id: 6, text: 'Mars, with a temperature of 460 °C', is_correct: false)
Choice.create(question_id: 6, text: 'Pluto, with a temperature of 460 °C', is_correct: false)

# Question 3
Question.create(quiz_id: 2, text: "Which of Newton's Laws states that for every action, there is an equal and opposite reaction?", points: 10, position: 3)

Choice.create(question_id: 7, text: 'The twenty fifth law of gravity', is_correct: false)
Choice.create(question_id: 7, text: 'Law of Thermodynamics', is_correct: false)
Choice.create(question_id: 7, text: 'The second law of motion', is_correct: false)
Choice.create(question_id: 7, text: 'The third law of motion', is_correct: true)


# Question 4
Question.create(quiz_id: 2, text: 'Which is the most abundant element in the universe?', points: 10, position: 4)

Choice.create(question_id: 8, text: 'Nitrogen', is_correct: false)
Choice.create(question_id: 8, text: 'Hydrogen', is_correct: true)
Choice.create(question_id: 8, text: 'Carbon', is_correct: false)
Choice.create(question_id: 8, text: 'Neon', is_correct: false)

# Question 5
Question.create(quiz_id: 2, text: 'What is the largest known celestial body?', points: 10, position: 5)

Choice.create(question_id: 9, text: 'Fermi Bubbles', is_correct: false)
Choice.create(question_id: 9, text: 'The Tarantula Nebula', is_correct: false)
Choice.create(question_id: 9, text: 'Hercules-Corona Borealis Great Wall', is_correct: true)
Choice.create(question_id: 9, text: 'Yo Mama', is_correct: false)

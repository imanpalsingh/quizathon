# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
`ruby 2.7.5`

* Project Setup
`rake db:drop && rake db:create && rake db:migrate && rake db:seed` and also run `redis-server`

## Rails Quiz

Rails Quiz allows multiple users to answer quiz questions simultaneously.


1. Share the link for a multiplayer game.
2. Starting the quiz will start for all players.


## List of functionality
1. Sign Up
2. Login
3. Reset Password Functionality
4. Live Update on the Leaderboard
5. Dynamic Question changes
6. Logout

#### 1. Visit to [Rails Quiz Login](https://team-54.herokuapp.com/users/sign_in)
<img width="800" alt="image" src="https://user-images.githubusercontent.com/61962822/190927805-36ab0b79-4f46-4600-8fc2-6e27d946427b.png">

#### 2. Click on [Sign Up](https://team-54.herokuapp.com/users/sign_up) and fill the required field.
<img width="800" alt="image" src="https://user-images.githubusercontent.com/61962822/190927890-3da3e534-09d9-4166-8102-b13af13b168f.png">

#### 3. This will open the quizzes dashboard where it list all the `quizzes` and `logged in` user details.
* Currenty we have 2 quiz.
  - **Ruby on Rails**
  - **Science**
<img width="800" alt="image" src="https://user-images.githubusercontent.com/61962822/190927986-35466a95-63d4-41d1-a2f9-f41e58074ddb.png">


#### 4. Select any quiz and click on `Start`. eg:- `Ruby on Rails`.
  - This will open the `Quiz start` which has following section.
    * **Profile**:- 
      - This section has two button.
        * **Exit**:- Upon clicking on this button, we are logged out and redirected to the login page.
        * **Back**:- Clicking on this button redirects us to the quizzes page.
    * **Question section**:- 
      - In this section, the first question is presented with the following options.
        * As soon as we click on the correct option, the score will be update in the Leaderboard and display the next question.
        * As soon as we click on the incorrect option, the score will not be update in the Leaderboard and display the next question.
    * **Leaderboard section**:- 
      - This section lists all the live users who are answering the current quiz.

<img width="800" alt="Screenshot 2022-09-19 at 2 38 11 AM" src="https://user-images.githubusercontent.com/61962822/190928227-79281d87-752f-4145-8e37-085b45ce80c6.png">



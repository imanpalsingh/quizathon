class QuizzesController < ApplicationController
  def index
    @users = [
      { name: 'Imanpal Singh', won: true, score: 19 },
      { name: 'Krishna Singh', won: false, score: 12 },
      { name: 'Prayesh', won: false, score: 9 },
    ]

    @question = {
      "name" => 'How are turbo frames sent through the network?',
      "answers" => [
        'It is handled by web sockets and bla bla bla bal',
        'It is handled by web sockets asd asd asd asd asd as das das das',
        'It is handled by web sock',
      ]
    }
  end
end

class QuizzesController < ApplicationController
  def index
    @users = [
      { name: 'Imanpal Singh', won: true, score: 19 },
      { name: 'Krishna Singh', won: false, score: 12 },
      { name: 'Prayesh', won: false, score: 9 },
    ]
  end
end

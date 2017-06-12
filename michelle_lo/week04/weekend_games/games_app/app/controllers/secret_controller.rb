class SecretController < ApplicationController

  def guess
  end

  def form
    redirect_to '/games/secret/:guess'
  end

  def play
  # raise 'hell'
    @guess = params['guess']

    secret_number = (rand() * 10).to_i

    if secret_number == @guess
      @result = "You got it right, the secret number was #{secret_number}. Great work"
    else @result = "WRONG! The secret number was #{secret_number}"
    end

  end # play
# end # class
end

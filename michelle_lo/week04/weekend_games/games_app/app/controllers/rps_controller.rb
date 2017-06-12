class RpsController <ApplicationController

  def start
  end

  def play
    @choice = params['token'].downcase

    tokens = ["rock", "paper", "scissors"]
    @computer_token = tokens.sample

    if @choice == @computer_token
      @result = "Jinx"
    else @choice != @computer_token
      @result = 'dunno'
  end
  end
end

class Magic2Controller < ApplicationController
  def ask
  end

  def form
    @question = params['question']
    answer = ["As I See It Yes", "Ask Again Later, Better Not Tell You Now", "Cannot Predict Now", "Concentrate and Ask Again", "Don't Count On It, It Is Certain", "It Is Decidely So, Most Likely", "My Reply Is No", "My Sources Say No", "Outlook Good", "Outlook Not So Good", "Reply Hazy Try Again", "Signs Point to Yes", "Very Doubtful", "Without A Doubt", "Yes", "Yes - Definitely", "You May Rely On It"]

    @answer = answer.sample
  end
  #
  # def play
  #   # @question = params['question']
  # end
end

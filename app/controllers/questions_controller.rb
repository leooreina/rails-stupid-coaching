class QuestionsController < ApplicationController
  def ask; end

  def answer
    question = params[:question]
    @formatted_question = question.split(',')[0].capitalize
    choose_coach_answer
  end

  def choose_coach_answer
    str = @formatted_question
    case
    when str.ends_with?('?')
      @formatted_asnwer = 'Silly question, get dressed and go to work!'
    when str.match('I am going to work')
      @formatted_asnwer = 'Great!'
    else
      @formatted_asnwer = "I don't care, get dressed and go to work!"
    end
  end
end

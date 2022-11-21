class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  private

  def coach_answer(question)
    if question == 'I am going to work'
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      'I dont care, get dressed and go to work!'
    end
  end
end

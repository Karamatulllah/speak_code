class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
  end

  def index
    @question = Question.find(params[:question_id])
    @related_answer = @question.answers
  end

  def create
    @answer = Answer.new(answer_params)
    @answer.question_id = params[:question_id]
    if @answer.save
      redirect_to question_answers_path(@answer.question)
    else

    end
  end

private
  def answer_params
    params.require(:answer).permit(:answer)
  end

end

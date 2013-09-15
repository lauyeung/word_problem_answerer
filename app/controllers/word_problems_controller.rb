class WordProblemsController < ApplicationController

  def new
    @word_problem = WordProblem.new
  end


  def create
    @word_problem = WordProblem.new(word_problem_params)

    respond_to do |format|
      if @word_problem.solve
        format.html { redirect_to @word_problem, notice: 'We solved it for you!' }
        format.json { render action: 'show', status: :created, location: @word_problem }
      else
        format.html { render action: 'new' }
        format.json { render json: @word_problem.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @word_problem = WordProblem.find(params[:id])
  end


  private

  def word_problem_params
      params.require(:word_problem).permit(:problem)
  end

end

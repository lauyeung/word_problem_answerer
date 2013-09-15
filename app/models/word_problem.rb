class WordProblem < ActiveRecord::Base

  validates_presence_of :problem
  validates_presence_of :solution

  validates_numericality_of :solution

  validate :problem_is_valid

  def solve
    if solver.valid?
      self.solution = solver.solution
      if valid?
        self.save
      end
    else
      problem_is_valid
      false
    end
  end

  protected

  def problem_is_valid
    if !solver.valid?
      errors.add(:problem, 'is not well formed')
    end
  end

  def solver
    WordProblemSolver.new(self.problem)
  end

end

class WordProblemSolver

  attr_reader :left_side_number, :right_side_number

  def initialize(worded_problem)
    @worded_problem = worded_problem

    if !@worded_problem.nil?
      # The first match is for the entire string and then each of the parens captures each digit separately
      matches = @worded_problem.match(/(\d+) plus (\d+)/)
      if matches.present? && matches.size ==3
        @left_side_number = matches[1].to_i
        @right_side_number = matches[2].to_i
      end
    end
  end

  def valid?
    @left_side_number.present? &&
    @right_side_number.present? &&
    mathematical_operation.present?
  end

  def mathematical_operation
    'plus'
  end

  def solution
    self.left_side_number + self.right_side_number
  end



end

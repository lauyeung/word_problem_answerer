require 'spec_helper'

describe WordProblemSolver do

  describe '3 plus 4' do
    let(:word_problem_solver) do
      WordProblemSolver.new('What is 3 plus 4?')
    end

    it 'is valid' do
      expect(word_problem_solver).to be_valid
    end

    it 'has a left_side_number' do
      expect(word_problem_solver.left_side_number).to eql(3)
    end

    it 'has a right_side_number' do
      expect(word_problem_solver.right_side_number).to eql(4)
    end

    it 'has a mathematical operation' do
      expect(word_problem_solver.mathematical_operation).to eql('plus')
    end

    it 'presents a valid answer for 3 plus 4' do
      expect(word_problem_solver.solution).to eql(7)
    end

  end

  describe '7 plus 3' do
    let(:word_problem_solver) do
      WordProblemSolver.new('What is 7 plus 3?')
    end


    it 'has a left_side_number' do
      expect(word_problem_solver.left_side_number).to eql(7)
    end

    it 'has a right_side_number' do
      expect(word_problem_solver.right_side_number).to eql(3)
    end

    it 'has a mathematical operation' do
      expect(word_problem_solver.mathematical_operation).to eql('plus')
    end

    it 'presents a valid answer for 7 plus 3' do
      expect(word_problem_solver.solution).to eql(10)
    end

  end

  describe 'an invalid word problem solver' do
    it 'is invalid' do
      expect(WordProblemSolver.new('foo')).to_not be_valid
    end
  end

end

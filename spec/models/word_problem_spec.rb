require 'spec_helper'

describe WordProblem do
  it { should have_valid(:problem).when('What is 7 plus 3?') }
  it { should_not have_valid(:problem).when(nil, '', 'foo') }

  it { should have_valid(:solution).when(10, '10',0) }
  it { should_not have_valid(:solution).when(nil, '', 'foo') }

  it 'solves the word problem' do
    problem = WordProblem.new do |p|
      p.problem = 'What is 3 plus 4?'
    end
    problem.solve
    expect(problem.solution).to eql(7)
  end
end

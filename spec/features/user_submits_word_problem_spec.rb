require 'spec_helper'

feature 'user submits word problem', %Q{
  As a math whiz
  I want to solve a word problem
  So I appear wicked smaht
} do

  # Acceptance Criteria:
  # * I must specify a well-formed that is well-formed
  # * I must specify two numbers and a mathematical operation
  # * If I specify valid information, the system should perform the calculation
  # * If I specify invalid information, the system should alert me with an error

  scenario 'user attempts to add two numbers' do
    visit '/word_problems/new'
    fill_in 'Problem', with: 'What is 7 plus 12?'
    click_button 'Solve'
    expect(page).to have_content('19')
    expect(page).to have_content('We solved it for you!')
  end

  scenario 'user attempts to enter invalid input' do
    visit '/word_problems/new'
    click_button 'Solve'
    expect(page).to have_content('is not well formed')
  end


end

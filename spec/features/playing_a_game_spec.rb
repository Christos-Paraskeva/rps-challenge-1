require 'spec_helper'

feature 'Playing a new game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    click_link 'New Game'
    expect(page).to have_content "What is your name?"
  end


  before :each do
    visit '/'
    click_link 'New Game'
    fill_in('name', with: 'Jon')
    click_button "Submit"
  end

  scenario 'shows a players name' do
    expect(page).to have_content "Welcome Jon"
  end

  scenario 'gives the option to play against a computer or another player' do
    click_button 'Computer'
    expect(page).to have_content "Please choose Rock, Paper or Scissors"
  end


  scenario 'Allows a player to choose Rock, Paper, or Scissors' do
    click_button "Computer"
    player_1_choice_paper
    expect(page).to have_content "You chose Paper"
  end

  scenario 'Allows a second player to player' do
    click_button "Another Player"
    expect(page).to have_content "Player 2: Enter Name"
end

  scenario 'allows two players to play against each other' do
    player_2_sign_up
    player_1_choice_paper
    player_2_choice_scissors
    expect(page).to have_content "Player 2 wins"
  end

  def player_2_sign_up
    click_button "Another Player"
    fill_in("name2", with: "Bob")
    click_button "Submit"
  end

  def player_1_choice_paper
    select 'Paper', from: "Option"
    click_button "Draw"
  end

  def player_2_choice_scissors
    select 'Scissors', from:"Option2"
    click_button "Draw"
  end


end

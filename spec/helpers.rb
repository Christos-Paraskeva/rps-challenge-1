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
  select 'Scissors', from: "Option2"
  click_button "Draw"
end

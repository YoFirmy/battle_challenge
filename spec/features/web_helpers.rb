def sign_in_and_play
  visit('/')
  fill_in('player_1_name', with: 'Picard')
  fill_in('player_2_name', with: 'Kirk')
  click_button('submit')
end

def sign_in_play_and_attack
  sign_in_and_play
  click_link 'Attack'
end

def second_player_attack
  sign_in_play_and_attack
  click_button 'OK'
  click_link 'Attack'
end
feature 'attacking player' do
  scenario 'get a confirmation player 1 attacked player 2' do
    sign_in_play_and_attack
    expect(page).to have_content 'Picard attacked Kirk'
  end

  scenario 'reduces player 2 HP' do
    sign_in_play_and_attack
    expect(page).to have_content "Kirk's HP: 90"
  end

  scenario 'get a confirmation player 2 attacked player 1' do
    second_player_attack
    expect(page).to have_content 'Kirk attacked Picard'
  end

  scenario 'reduces player 2 HP' do
    second_player_attack
    expect(page).to have_content "Picard's HP: 90"
  end
end
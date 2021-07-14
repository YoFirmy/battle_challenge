feature 'Hit points' do
  scenario 'players can view the opposing plays hit points' do
    visit('/')
    fill_in('player_1_name', with: 'Picard')
    fill_in('player_2_name', with: 'Kirk')
    click_button('submit')
    expect(page).to have_content "Kirk's HP: 100"
  end
end

feature 'Hit points' do
  scenario 'players can view the opposing plays hit points' do
    sign_in_and_play
    expect(page).to have_content "Kirk's HP: 100"
  end
end

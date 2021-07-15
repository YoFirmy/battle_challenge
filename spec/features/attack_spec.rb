feature 'attacking player' do
  scenario 'get a confirmation you attacked opponent' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'You attacked Kirk'
  end

  scenario 'reduces opponents HP' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Kirk's HP: 90"
  end
end
feature 'attacking player' do
  scenario 'get a confirmation when attacking a player' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'You attacked Kirk'
  end
end
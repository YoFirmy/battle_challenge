feature 'entering names' do
  scenario 'players fill in and submit form' do
    sign_in_and_play
    expect(page).to have_content 'Picard vs Kirk'
  end
end

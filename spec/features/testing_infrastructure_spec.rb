feature 'gets the names' do
  scenario 'get player names' do
    visit('/')
    fill_in :player1, with: 'Pikachu'
    fill_in :player2, with: 'Charizard'
    click_button 'submit player names'
    expect(page).to have_content 'Pikachu vs. Charizard'
  end
end

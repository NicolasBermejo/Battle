feature 'gets the names' do
  scenario 'get player names' do
    sign_in_and_play
    expect(page).to have_content 'Pikachu vs. Charizard'
  end
end

feature 'see hit points' do
  scenario 'see player hit points' do
    sign_in_and_play
    expect(page).to have_content 'Pikachu = 100'
  end
end

feature 'Attack player 2' do
  scenario 'Attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Pikachu attacked Charizard'
  end
end

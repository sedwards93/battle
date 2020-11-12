feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Teddy attacked Jasper'
  end

  scenario 'attack Player 1' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Return'
    click_button 'Attack'
    expect(page).to have_content 'Jasper attacked Teddy'
  end
end
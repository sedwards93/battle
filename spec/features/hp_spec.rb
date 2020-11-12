feature 'Player HP' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Jasper: 60HP'
  end
  scenario 'Attack reduces player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Return'
    expect(page).to have_content 'Jasper: 50HP'
    expect(page).not_to have_content 'Jasper: 60HP'
  end
end 

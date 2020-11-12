feature 'Player HP' do

  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Jasper: 60HP'
  end

  scenario 'see Player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Teddy: 60HP'
  end

  scenario 'Attack on the first round reduces player 2 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Return'
    expect(page).to have_content 'Jasper: 50HP'
    expect(page).not_to have_content 'Jasper: 60HP'
  end

  scenario 'Attack on the second round reduces player 1 HP by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Return'
    click_button 'Attack'
    click_button 'Return'
    expect(page).to have_content 'Teddy: 50HP'
    expect(page).not_to have_content 'Teddy: 60HP'
  end

end 

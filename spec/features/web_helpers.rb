def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Teddy'
  fill_in :player_2_name, with: 'Jasper'
  click_button 'Submit'
end
feature 'Form input' do
  scenario 'Players can enter thier names' do
    visit('/')
    fill_in :player_1_name, with: "Symion"
    fill_in :player_2_name, with: "Georgie"
    click_button "Submit"
    expect(page).to have_content("Symion vs Georgie")
  end
end





# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end
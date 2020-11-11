feature 'Form input' do
  scenario 'Players can enter thier names' do
    sign_in_and_play
    expect(page).to have_content("Teddy vs Jasper")
  end
end





# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end
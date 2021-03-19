feature "App keeps track of who's turn it is" do
  
  scenario 'starts with player 1' do
      sign_in_and_play
      expect(page).to have_content("RG's turn")
  end    

  scenario 'after an attack, next players turn' do
      sign_in_and_play
      click_on 'Attack Player 2'
      expect(page).to have_content("Taran's turn")
  end

end
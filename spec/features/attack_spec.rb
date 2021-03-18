feature 'attack another player' do

    scenario 'hit attack button' do
        sign_in_and_play
        click_on 'Attack Player 1'
        expect(page).to have_content("90")
    end    


end
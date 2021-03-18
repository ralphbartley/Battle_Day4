feature 'look at other players hitpoint total' do
   
   
    scenario 'first visit' do
        sign_in_and_play
        expect(page).to have_content '100'
    end

end
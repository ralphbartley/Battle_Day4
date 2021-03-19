def sign_in_and_play
    visit '/'
    fill_in 'first_name', with: 'RG'
    fill_in 'second_name', with: 'Taran'
    click_on 'Submit'
end

def attack
    click_on 'Attack Player 2'
    click_on 'Attack Player 1'
end
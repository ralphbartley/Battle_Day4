def sign_in_and_play
    visit '/'
    fill_in 'first_name', with: 'RG'
    fill_in 'second_name', with: 'Sha'
    click_on 'Submit'
end
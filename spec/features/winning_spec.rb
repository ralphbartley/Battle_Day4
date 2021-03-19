feature 'Winning condition' do
  scenario 'person wins when opponents hp drops to 0' do
    sign_in_and_play
    9.times { attack }
    click_on 'Attack Player 2'
    expect(page).to have_content "RG wins!"
  end
end
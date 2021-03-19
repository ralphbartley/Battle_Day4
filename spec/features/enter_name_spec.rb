feature "enter names" do

  scenario 'Can run app and check page content' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end

  scenario '' do
    sign_in_and_play
    expect(page).to have_content 'RG vs. Taran'
  end

end

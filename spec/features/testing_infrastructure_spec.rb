feature "Testing infrastructur" do

  scenario 'Can run app and check page content' do
    visit '/'
    expect(page).to have_content 'Testing infrastructure working!'
  end

  scenario '' do
    visit '/'
    fill_in 'first_name', with: 'RG'
    fill_in 'second_name', with: 'David'
    click_on 'Submit'
    expect(page).to have_content 'RG vs. David'
  end

end

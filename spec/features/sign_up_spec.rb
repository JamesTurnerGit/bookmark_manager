feature 'registering users' do

  scenario 'registering a user' do
  	visit('/register')
  	fill_in :email, with: 'my_email@email.com'
  	fill_in :password, with: 'password'
    fill_in :password_confirmation, with: 'password'

  	expect{ click_button 'Sign up' }.to change(User,:count).by(1)
  	expect(current_path).to eq '/links'
  	expect(page).to have_content('Welcome to bookmark manager, my_email@email.com')
  end

  scenario 'bad confirmation password' do
    visit('/register')
  	fill_in :email, with: 'my_email@email.com'
  	fill_in :password, with: 'password'
    fill_in :password_confirmation, with: 'password1234'

  	expect{ click_button 'Sign up' }.to change(User,:count).by(0)
    expect(find_field('email').value).to eq 'my_email@email.com'
    expect(current_path).not_to eq '/links'
    expect(page).to have_content("Password and confirmation password do not match")
  end

  scenario 'bad confirmation password' do
    visit('/register')
  	fill_in :email, with: 'my_emailatemail'
  	fill_in :password, with: 'password'
    fill_in :password_confirmation, with: 'password'
    expect{ click_button 'Sign up' }.to change(User,:count).by(0)
  end
end

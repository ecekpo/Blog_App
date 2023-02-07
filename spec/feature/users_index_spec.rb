require 'rails_helper'

RSpec.describe 'User Page', type: :feature do
  before(:each) do
    @user_one = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', 
    bio: 'Teacher from Mexico.')
    @user_two = User.create(name: 'Polly',
                            photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYkbpibWnxXGEOHY7OJNsVhPWPhtp4UTTLiP9mzxavaJWM43-BPm_f46GvSGexphkvuvU&usqp=CAU', bio: 'Student.')
                            User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')
    visit users_path
  end

  describe 'index page' do
    describe 'View User names' do
      it 'displays names of all users' do
        expect(page).to have_content(@user_one.name)
        expect(page).to have_content(@user_two.name)
      end
    end

    describe 'View Profile Photos' do
      it 'displays photos of all users' do
        expect(page).to have_css("img[src*='#{@user_one.photo}']")
        expect(page).to have_css("img[src*='#{@user_two.photo}']")
      end
    end

    describe 'View User Posts Count' do
      it 'displays the number of posts for each user' do
        expect(page).to have_content("number of posts: #{@user_one.posts_counter}")
        expect(page).to have_content("number of posts: #{@user_two.posts_counter}")
      end
    end

    describe 'GET user#show' do
      it "redirects to the user's show page" do
        click_on @user_one.name.to_s
        expect(page).to have_current_path user_path(@user_one.id)
      end
    end
  end
end
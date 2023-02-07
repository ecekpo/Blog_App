require 'rails_helper'

RSpec.describe 'User Details Page', type: :feature do
  before(:each) do
    @user_one = User.create(name: 'Thomas', photo: 'https://cf.shopee.ph/file/addd63d9096e591237f4a80b42b52979',
                            bio: 'Mob from Small Heath')

    @post_one = Post.create(author: @user_one, title: 'Hello One', text: 'This is my first post')

    @post_two = Post.create(author: @user_one, title: 'Hello Two', text: 'This is my second post')

    @post_three = Post.create(author: @user_one, title: 'Hello Three', text: 'This is my third post')

    visit user_path(@user_one.id)
  end

  describe 'show page' do
    it 'shows the profile picture of a selected user' do
      expect(page).to have_css("img[src='#{@user_one.photo}']")
    end

    it 'shows the user name' do
      expect(page).to have_content(@user_one.name)
    end

    it 'shows the number of posts for the user' do
      expect(page).to have_content("number of posts: #{@user_one.posts_counter}")
    end

    it 'shows the bio of the user' do
      expect(page).to have_content(@user_one.bio)
    end

    it 'shows the three recent post of the user' do
      @user_one.most_recent_3_posts.each do |post|
        expect(page).to have_content(post.text)
      end
    end

    it 'redirects to post\'s details page' do
      click_on @post_one.text
      expect(page).to have_current_path user_post_path(@user_one.id, @post_one.id)
    end

    it 'redirects to all posts for a user page' do
      click_on 'See all posts'
      expect(page).to have_current_path user_posts_path(@user_one.id)
    end
  end
end

require 'rails_helper'

RSpec.describe 'Post', type: :feature do
    before(:each) do
    @user_one = User.create(name: 'GreatE', photo: 'https://cf.shopee.ph/file/addd63d9096e591237f4a80b42b52979',
    bio: 'Peter from Ken Town')
    @post_one = Post.create(author: @user_one, title: 'Hello One', text: 'This is my first post')
    @comment_one = Comment.create(author: @user_one, post: @post_one, text: 'This is a sample text')
    visit user_posts_path(@user_one.id)
    end
  
    describe 'index page' do
    it 'shows the profile picture of a selected user' do
    expect(page).to have_css("img[src='#{@user_one.photo}']")
    end
  
    it 'shows the user name' do
    expect(page).to have_content(@user_one.name)
    end
    
    it 'shows the number of posts for the user' do
    expect(page).to have_content('number of posts:')
    expect(page).to have_content(@user_one.posts_counter)
    end
  
    it 'shows the body of a post' do
    expect(page).to have_content(@post_one.text)
    end
  
    it 'shows the first comment of a post' do
    expect(page).to have_content(@comment_one.text)
    end
  
    it 'shows the number of comment for a post' do
    expect(page).to have_content('comments:')
    expect(page).to have_content(@post_one.comments_counter)
    end
  
    it 'shows the number of like for a post' do
    expect(page).to have_content('likes:')
    expect(page).to have_content(@post_one.likes_counter)
    end
  
    it 'shows the button to see more user posts ' do
    expect(page).to have_content('Pagination')
    end
    
    it 'redirects to a post\'s details page' do
    click_on @post_one.text
    expect(page).to have_current_path user_post_path(@user_one.id, @post_one.id)
    end
    end
  end
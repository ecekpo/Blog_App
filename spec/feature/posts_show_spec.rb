require 'rails_helper'

RSpec.describe 'Post', type: :feature do
  before(:each) do
    @user_one = User.create(name: 'Great', photo: 'https://cf.shopee.ph/file/addd63d9096e591237f4a80b42b52979',
                            bio: 'Peter from Ken Town')
    @post_one = Post.create(author: @user_one, title: 'Hello One', text: 'This is my first post')
    @comment_one = Comment.create(author: @user_one, post: @post_one, text: 'This is a sample text')

    visit user_post_path(@user_one.id, @post_one.id)
  end

  describe 'show page' do
    it 'shows the title of the post' do
      expect(page).to have_content(@post_one.title)
    end

    it 'shows the author\'s name of the post' do
      expect(page).to have_content('by')
      expect(page).to have_content(@user_one.name)
    end

    it 'shows the number of comments for the post' do
      expect(page).to have_content('Comments:')
      expect(page).to have_content(@post_one.comments_counter)
    end

    it 'shows the number of likes for the post' do
      expect(page).to have_content('Likes:')
      expect(page).to have_content(@post_one.likes_counter)
    end

    it 'shows the body of a post' do
      expect(page).to have_content(@post_one.text)
    end

    it 'shows the username of a comment' do
      expect(page).to have_content("#{@user_one.name}:")
    end

    it 'shows the comment of a post by a user' do
      expect(page).to have_content(@comment_one.text)
    end
  end
end

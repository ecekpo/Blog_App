require 'rails_helper'

describe Like, type: :model do
  describe 'validations' do
    @user = User.create(name: 'Emem', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
    @post = Post.create(author: @user, title: 'Hello', text: 'Likes')

    subject do
      Like.new(author: @user, post: @post)
    end

    before { subject.save }

    it 'should an author id as integer' do
      subject.author_id = '2'
      expect(subject).to_not be_valid
    end

    it 'should an post id as integer' do
      subject.post_id = '4'
      expect(subject).to_not be_valid
    end
  end
end
# require 'rails_helper'

# describe Post, type: :model do
#   @user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')

#   subject { Post.new(author: @user, title: 'Hello', text: 'This is my first post') }

#   before { subject.save }

#   describe 'validations' do
#     it 'should have title present' do
#       subject.title = nil
#       expect(subject).to_not be_valid
#     end

#     it 'should have title with a max length of 250' do
#       subject.title = Array.new(251, 'a').join
#       expect(subject).to_not be_valid
#     end

#     describe '#comments_counter' do
#       it 'should have an integer comments_counter' do
#         subject.comments_counter = '200'
#         expect(subject).to_not be_valid
#       end

#       it 'should be greater than or equal to 0' do
#         subject.comments_counter = -1
#         expect(subject).to_not be_valid
#       end
#     end

#     describe '#likes_counter' do
#       it 'should have an integer likes_counter' do
#         subject.likes_counter = '100'
#         expect(subject).to_not be_valid
#       end

#       it 'should be greater than or equal to 0' do
#         subject.likes_counter = -1
#         expect(subject).to_not be_valid
#       end
#     end
#   end

#   describe '#most_recent_comments' do
#     before do
#       5.times do |i|
#         Comment.create(author: @user, text: "#{i} Comment", post: subject)
#       end
#     end

#     it 'should return the 3 most recent comments' do
#       expect(subject.return_most_recent_comment).to eq subject.comments.last(5)
#     end
#   end
# end

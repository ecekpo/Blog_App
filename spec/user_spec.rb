# require 'rails_helper'

# describe User, type: :model do
#   subject do
#     User.new(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
#   end

#   before { subject.save }

#   describe '#name' do
#     it 'should have name present' do
#       subject.name = nil
#       expect(subject).to_not be_valid
#     end
#   end

#   describe '#posts_counter to be >= 0' do
#     it 'should be greater than 0' do
#       subject.posts_counter = -1
#       expect(subject).to_not be_valid
#     end
#   end

#   describe '#most_recent_posts' do
#     before do
#       3.times do |i|
#         Post.create(author: subject, title: "Post #{i}")
#       end
#     end

#     it 'should return the 3 most recent posts' do
#       expect(subject.return_most_recent_post).to eq subject.posts.last(3)
#     end
#   end
# end

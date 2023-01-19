class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes
  has_many :comments

  after_create :post_counter_update

  def post_counter_update
    author.increment!(:posts_counter)
  end
end

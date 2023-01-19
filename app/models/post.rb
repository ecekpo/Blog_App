class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :likes
  has_many :comments

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :likes_counter, numericality: { greater_than_or_equal_to: 0, only_integer: true }

  after_create :post_counter_update

  def post_counter_update
    author.increment!(:posts_counter)
  end

  def return_most_recent_comment
    comments.last(5)
  end

  private :post_counter_update
end

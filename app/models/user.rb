class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id', dependent: :destroy
  has_many :comments, foreign_key: 'author_id', dependent: :destroy
  has_many :likes, foreign_key: 'author_id', dependent: :destroy
  after_initialize :set_posts_counter_default

  validates :name, presence: true
  validates :posts_counter,
            numericality: {
              only_integer: true, greater_than_or_equal_to: 0
            }

  def set_posts_counter_default
    self.posts_counter = 0 if posts_counter.nil?
  end
  private :set_posts_counter_default

  def most_recent_3_posts
    posts.order('created_at desc').limit(3)
  end
end

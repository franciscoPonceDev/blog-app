class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes

  def recent_comments
    comments.order(created_at: :desc).limit(5)
  end

  def short_text
    text.truncate(75)
  end

  def liked?(user)
    likes.where(user_id: user.id).any?
  end

  after_save :update_post_counter

  private

  def update_post_counter
    author.increment!(:posts_counter)
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :posts
  has_many :likes
  has_many :comments

  validates :name, presence: true
  validates :posts_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  before_create do
    self.posts_counter = 0
  end

  def recent_posts
    posts.order(created_at: :desc).limit(3)
  end

  Roles = %i[admin default].freeze

  def admin?
    is? :admin
  end

  def is?(requested_role)
    role == requested_role.to_s
  end
end

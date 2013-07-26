class Post < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  has_many :comments, dependent: :destroy
  belongs_to :user
  belongs_to :topic
  attr_accessible :body, :title, :topic, :image, :image_cache

  default_scope order('created_at DESC')

  validates :title, length: { minimum: 5 }, presence: true
  validates :body, length: { minimum: 20 }, presence: true
  validates :topic, presence: true
  validates :user, presence: true  
end
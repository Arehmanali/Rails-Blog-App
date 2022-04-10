class Post < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, uniqueness: { message: 'Title Already Exists' }
  validates :title, length: { minimum: 2 }
  scope :long_title, -> { where('LENGTH(title) > 2') }
  scope :long_body, -> { where('LENGTH(body) > 10') }
end

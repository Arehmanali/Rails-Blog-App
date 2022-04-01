class Post < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, uniqueness: { message: 'Title Already Exists' }
  validates :title, length: { minimum: 2 }
end

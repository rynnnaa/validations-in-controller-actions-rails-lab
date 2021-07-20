class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
  message: "must be this or else" }
  validates :content, length: { minimum: 250 }
end

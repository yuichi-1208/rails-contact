class Contact < ApplicationRecord
  validates :content, presence: true
  # validates :content, length: { in: 1..140}
  validates :content, length: { maximum: 140}
end

class Post < ApplicationRecord
  belongs_to :location
  validates :title, presence: true,
                    length: {:maximum => 200}
  validates :body, presence: true
end

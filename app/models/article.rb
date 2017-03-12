class Article < ApplicationRecord
  has_many :comments, dependent: destroy #関連付けて削除するときはこれをつけるのね
  validates :title, presence: true,
                      length: { minimum: 5 }
end

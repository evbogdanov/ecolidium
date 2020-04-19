class Service < ApplicationRecord
  validates :slug, format: { with: /\A[a-zа-яё-]{3,100}\z/,
                             message: 'only allows letters in lower case and hyphen (3-100 characters)' }
  validates :title, length: { in: 3..100 }

  has_rich_text :content
end

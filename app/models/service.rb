class Service < ApplicationRecord
  validates :slug, format: { with: /\A[a-zа-яё-]+\z/,
                             message: 'only allows letters in lower case and hyphen' }
end

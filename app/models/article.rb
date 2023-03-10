class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 5 }

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end

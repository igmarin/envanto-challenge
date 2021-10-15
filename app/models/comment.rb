# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  has_many_attached :files

  validates :files, attached: true,
                    limit: { min: 1, max: 3 },
                    content_type: { in: 'text/plain',
                                    message: 'the file type needs to be text/plain' }
end

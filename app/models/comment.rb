# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  has_many_attached :files

  validates :files, attached: true,
                    content_type: { in: 'text/plain',
                                    message: 'the file type needs to be text/plain' }

  after_create :process_files

  def process_files
    UpdateCommentJob.set(wait: 1.seconds).perform_later(self)
  end
end

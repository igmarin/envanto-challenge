# frozen_string_literal: true

# Get the text nao
class UpdateCommentJob < ApplicationJob
  queue_as :default

  def perform(comment)
    content = comment.files.map(&:download)
    content.each_with_index do |text, index|
      res = SentimApi.validate(text)
      comment.result += "\n#{comment.files[index].filename.to_s}\n Polarity: #{res.result.polarity} Type: #{res.result.type}"
      comment.sentences += "\n#{comment.files[index].filename.to_s}\n #{res.sentences.to_s}"
    end
    comment.save
  end
end

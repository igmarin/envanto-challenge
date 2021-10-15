# frozen_string_literal: true

# SentimApi implementation
module SentimApi
  @client = Sentim::Client.new
  @sentiment = @client.sentiment_validation

  def self.validate(text)
    @sentiment.validate(text: text)
  end
end

# frozen_string_literal: true

require "rails_helper"

RSpec.describe SentimAPI do
  context "call the API" do
    describe "success calls" do
      it "returns 200" do
        text = SentimAPI.new("text")
        expect(text).to include("text")
      end
      it "returns valid text"
      it "fails if nothing is been sent"
    end
  end
end

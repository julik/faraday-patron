# frozen_string_literal: true

require 'faraday'
require 'faraday/patron/version'
require 'faraday/adapter/patron'

# Extend the main Faraday module.
module Faraday
  module Patron
    class Error < StandardError; end
  end

  Faraday::Adapter.register_middleware(http: Faraday::Adapter::Patron)
end

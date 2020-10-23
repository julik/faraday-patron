# frozen_string_literal: true

require 'faraday'
require_relative 'patron/version'
require_relative 'adapter/patron'

# Extend the main Faraday module.
module Faraday
  module Patron
    class Error < StandardError; end
  end

  Faraday::Adapter.register_middleware(patron: Faraday::Adapter::Patron)
end

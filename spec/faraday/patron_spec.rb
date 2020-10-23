# frozen_string_literal: true
require 'spec_helper'

RSpec.describe Faraday::Patron do
  it 'has a version number' do
    expect(Faraday::Patron::VERSION).not_to be nil
  end
end

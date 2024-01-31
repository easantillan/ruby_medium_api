# frozen_string_literal: true

require_relative "medium_api/version"
require_relative "medium_api/client"
require_relative 'medium_api/configuration'

module MediumApi
  class Error < StandardError; end

  class << self
    def configure
      yield(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end
  end
end

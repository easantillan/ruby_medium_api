# frozen_string_literal: true

require_relative "medium_api/version"
require_relative "medium_api/client"
require_relative 'medium_api/configuration'
require_relative 'medium_api/user'

module MediumApi
  class Error < StandardError; end

  class << self
    def configure
      yield(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end

    def me
      attrs = client.me
      User.new(**attrs)
    end

    def client
      @client ||= Client.new(api_key: configuration.api_key)
    end
  end
end

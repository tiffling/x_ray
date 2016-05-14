require 'simplabs/highlight'

module XRay
  class << self
    attr_accessor :configuration
  end

  def self.setup
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    def initialize
    end
  end
end

require 'x_ray/engine'

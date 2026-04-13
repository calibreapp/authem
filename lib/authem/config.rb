module Authem
  class Config
    attr_accessor :cookie_domain

    def initialize
      @cookie_domain = nil
    end
  end
end

require "active_support/all"
require "authem/railtie"
require "authem/version"

module Authem
  autoload :Config,             "authem/config"
  autoload :Controller,         "authem/controller"
  autoload :Role,               "authem/role"
  autoload :Session,            "authem/session"
  autoload :Support,            "authem/support"
  autoload :Token,              "authem/token"
  autoload :User,               "authem/user"
  autoload :AmbigousRoleError,  "authem/errors/ambigous_role"
  autoload :UnknownRoleError,   "authem/errors/unknown_role"

  def self.configuration
    @configuration ||= Config.new
  end

  def self.configure
    yield(configuration)
  end

  def self.reset_configuration!
    @configuration = Config.new
  end
end

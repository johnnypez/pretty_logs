module PrettyLogs
  class Railtie < ::Rails::Railtie
    config.before_initialize do |app|
      ::Rails.logger = config.logger = PrettyLogs.logger
    end
  end
end
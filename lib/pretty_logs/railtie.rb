module PrettyLogs
  class Railtie < ::Rails::Railtie
    config.after_initialize do |app|
      ::Rails.logger.formatter.send :extend, PrettyLogs::Formatter
    end
  end
end
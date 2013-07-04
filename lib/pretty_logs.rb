require "pretty_logs/version"
require "pretty_logs/railtie" if defined? Rails

module PrettyLogs
  module Formatter
    SEV_COLOR = {'debug'=>'1;37', 'info'=>'1;32', 'warn'=>'1;33', 'error'=>'1;31', 'fatal'=>'1;31', 'unknown'=>'1;37'}
    
    FORMAT = "\[%s\] %s\n"
    
    def call(sev, datetime, progname, msg)
      colored(sev, datetime, progname, msg)
    end
    
    private
    def colored(sev, datetime, progname, msg)
      color = SEV_COLOR[sev.downcase.to_s]
      str = msg2str(msg).strip
      str = sev.downcase.eql?('debug') ? colorize(str, '0;33') : str
      FORMAT % [colorize(sev.upcase, color), str]
    end
    
    def colorize(text, color)
      "\e[#{color}m#{text}\e[0m"
    end
    
  end
end

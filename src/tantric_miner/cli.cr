require "option_parser"
require "./cli/installer"

module TantricMiner
  module CLI
    extend self

    def run
      ARGV << "help" if ARGV.empty?
      case ARGV.shift
      when "-v", "--version", "-version", "version"
        puts TantricMiner::VERSION

      when "-h", "--help", "-help", "help"
        puts "List of sub commands to go here..."

      when "install"
        CLI::Installer.run

      end
    end
  end
end

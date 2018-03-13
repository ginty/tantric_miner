module TantricMiner
  module CLI
    module Installer
      extend self

      def run
        begin
          OptionParser.parse! do |parser|
            parser.banner = "Usage: salute [arguments]"

            parser.on("-h", "--help", "Show this help") { puts parser }
          end
        rescue OptionParser::InvalidOption
          puts "Invalid option supplied, run 'tm install -h' to see the valid options"
          exit 1
        end
      end
    end
  end
end

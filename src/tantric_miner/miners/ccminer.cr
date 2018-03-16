module TantricMiner
  module MINERS
    module CCMINER
      extend self

      # downloads ccminer and compiles
      def install
        puts "Input path where tpruvot ccminer will be installed"
        ccminer_path = gets.to_s.chomp
        ccminer_directory = "ccminer"
        command = "git clone https://github.com/tpruvot/ccminer.git #{ccminer_path}/#{ccminer_directory}"
        #need to add ./autogen and ./build to the command above 
        io = IO::Memory.new
        Process.run(command, shell: true, output: io)
        output = io.to_s
        puts output
      end
    end
  end
end

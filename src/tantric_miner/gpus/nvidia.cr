module TantricMiner
  module GPUS
    module NVIDIA
      extend self

      # Creates a new xorg.conf file
      def new_xorg_conf
        command = "sudo nvidia-xconfig -a --allow-empty-initial-configuration --cool-bits=31 --use-display-device=\"DFP-0\" --connected-monitor=\"DFP-0\""
        command = "ls"
        io = IO::Memory.new
        Process.run(command, shell: true, output: io)
        output = io.to_s
        puts output
      end
    end
  end
end

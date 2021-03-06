
require "taas_client"
require File.join("helper","command_executer")

module TaaS
    def self.start_server(contract_file)
      puts "Starting TaaS server with contract file: #{contract_file}"
      CommandExecuter.execute_command(File.dirname(__FILE__),"ruby server.rb #{contract_file}")
    end

    def self.client(url, timeout)
      TaaSClient.new(url, timeout)
    end
end

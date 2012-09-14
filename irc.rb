require 'rubygems'
require 'em-irc'
require 'game'
require 'lobby'
require 'config'

class A2A::IRC
  def initialize()
    @cfg = A2A::Config.new
    @game = nil
    
    @lobby = A2A::Lobby.new(@cfg.chan)
    @client = EventMachine::IRC::Client.new do |c|
      host @cfg.host
      port @cfg.port
      
      on (:connect) { nick(@cfg.nick) }

      on (:nick) { join(@cfg.chan) } 
      
      on(:message) do |src, tgt, msg|
        c.message(@cfg.chan, "got message #{msg}")
      end
    end
  end
end

class A2A::Config
  attr_accessor :host
  attr_accessor :port
  attr_accessor :chan  
  attr_accessor :nick

  def initialize 
    @host = 'irc.synirc.net'
    @port = '6667'
    @chan = '#a2a-test'
    @nick = 'A2A'
  end
end

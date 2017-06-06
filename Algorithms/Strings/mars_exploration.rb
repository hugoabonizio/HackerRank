class SignalProcessor
  SOS = 'SOS'

  def initialize
    @cursor = 0
    @altered = 0
  end

  def process(message)
    message.chars.each do |c|
      @altered += 1 if c != SOS[@cursor % 3]
      @cursor += 1
    end
    @altered
  end
end

message = gets
processor = SignalProcessor.new
puts processor.process(message)

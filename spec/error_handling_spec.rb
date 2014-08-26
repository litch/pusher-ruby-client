require 'spec_helper'

describe 'Disconnections' do
  let(:socket) { PusherClient::Socket.new(TEST_APP_KEY, :secret => 'secret') }
  
  it 'will die gracefully' do
    socket.subscribe("test-channel")
    
    socket.bind('test-channel')  do
    end
    socket.connect
    p socket
  end

end
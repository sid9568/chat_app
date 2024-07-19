class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chatroom_channel"
  end

  def unsubscribed
  end
  received(data) {
    const messages = document.getElementById('messages')
    messages.insertAdjacentHTML('beforeend', data['message'])
  }
end

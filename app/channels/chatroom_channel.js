import consumer from "./consumer"

consumer.subscriptions.create("ChatroomChannel", {
  connected() {
    console.log("Connected to the chatroom!")
  },

  disconnected() {
  },

  received(data) {
    const messages = document.getElementById('messages')
    messages.insertAdjacentHTML('beforeend', data['message'])
  }
})

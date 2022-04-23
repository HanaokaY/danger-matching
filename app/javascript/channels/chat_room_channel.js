import consumer from "./consumer"

const appChatRoom = consumer.subscriptions.create("ChatRoomChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const chatMessages = document.getElementById('chat-messages');
    chatMessages.insertAdjacentHTML('beforeend', data['chat_message']);
  },

  speak: function(chat_message, chat_room_id) {
    return this.perform('speak', { chat_message: chat_message, chat_room_id: chat_room_id });
  }
});

if(/chat_rooms/.test(location.pathname)) {
  $(document).on("keydown", ".chat-room__message-form_textarea", function(e) {
    if (e.key === "Enter") {
      const chat_room_id = $('textarea').data('chat_room_id')
      appChatRoom.speak(e.target.value, chat_room_id);
      e.target.value = '';
      e.preventDefault();
    }
  })
}


// チャットルームページのフォーム内でEnterを押す
// chat_room_channel.js の appChatRoom の speak アクションが発火
// 入力したテキスト(chat_message)を chat_room_channel.rb の speak アクションに送る
// chat_room_channel.rb の speak アクションでは、送られたchat_messageを受け取り、chat_messages テーブルに保存。ChatMeesageBroadcastJobを呼ぶ。
// chat_message_broadcast_job.rb で部分テンプレートchat_messages/_chat_message.html.erbを呼び出す。
// chat_room_channel.jsのreceivedを呼び出し、ブラウザ内にテキストを表示

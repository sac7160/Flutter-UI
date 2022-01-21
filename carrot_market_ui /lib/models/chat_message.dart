class ChatMessage {
  final String sender;
  final String profileImage;
  final String location;
  final String sendDate;
  final String message;
  final String? imageUrl;

  ChatMessage({
    required this.sender,
    required this.profileImage,
    required this.location,
    required this.sendDate,
    required this.message,
    this.imageUrl,
  });
}

List<ChatMessage> chatMessageList = [
  ChatMessage(
    sender: '박창현',
    profileImage: 'https://placeimg.com/200/100/people/grayscale',
    location: '성산동',
    sendDate: '1일전',
    message: 'developer님, 안녕하세요',
  ),
  ChatMessage(
      sender: 'Flutter',
      profileImage: 'https://placeimg.com/200/100/people',
      location: '서교동',
      sendDate: '2일전',
      message: '살게요',
      imageUrl: 'https://placeimg.com/200/100/tech/graysale'),
];

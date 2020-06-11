class user_info {
  String profilePic;
  String userName;
  String timeStamp;
  String status;

  user_info (this.profilePic,this.userName,this.timeStamp,this.status);

}

List<user_info> UserItems = [
  user_info('12.jpg','Adam','10:45am','176944.jpg'),
  user_info('53930.jpg','Anna','10:55am','africa.jpg'),
  user_info('176931.jpg','Denver','11:05am','53930.jpg'),
  user_info('176944.jpg','Barry','12:45pm','12.jpg'),
  user_info('africa.jpg','Ruth','04:45pm','176931.jpg'),
  user_info('connor.jpg','Sheraan','09:45pm','connor.jpg'),
  user_info('12.jpg','Alone','09:45pm','176931.jpg'),
];
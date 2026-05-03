import 'package:responsive_booking/feature/data/activity_model.dart';
import 'package:responsive_booking/feature/data/book_model.dart';
import 'package:responsive_booking/feature/data/friend_model.dart';
import 'package:responsive_booking/feature/data/user_model.dart';

final List<UserModel> user = [
  UserModel(
    id: 'user_1',
    name: 'Amy Winnar',
    image:
        'https://plus.unsplash.com/premium_photo-1671656349218-5218444643d8?w=600&auto=format&fit=crop&q=60',
  ),
];

final List<BookModel> book = [
  BookModel(
    id: 'book_1',
    name: 'Harry Potter and t...',
    image: 'https://covers.openlibrary.org/b/isbn/0439064872-L.jpg',
  ),
  BookModel(
    id: 'book_2',
    name: 'The Alchemist',
    image: 'https://covers.openlibrary.org/b/isbn/0061122416-L.jpg',
  ),
  BookModel(
    id: 'book_3',
    name: '1984',
    image: 'https://covers.openlibrary.org/b/isbn/0451524934-L.jpg',
  ),
  BookModel(
    id: 'book_4',
    name: 'Brave New World',
    image: 'https://covers.openlibrary.org/b/isbn/0060850523-L.jpg',
  ),
  BookModel(
    id: 'book_5',
    name: 'One Hundred Year...',
    image: 'https://covers.openlibrary.org/b/isbn/0060929790-L.jpg',
  ),
];

final List<FriendModel> friend = [
  FriendModel(
    id: 'friend_1',
    image:
        'https://plus.unsplash.com/premium_photo-1671656349218-5218444643d8?w=600&auto=format&fit=crop&q=60',
    name: 'Brittany Sullivan',
  ),
  FriendModel(
    id: 'friend_2',
    image:
        'https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?q=80&w=687&auto=format&fit=crop',
    name: 'Tonya Gray',
  ),
  FriendModel(
    id: 'friend_3',
    image:
        'https://images.unsplash.com/photo-1580489944761-15a19d654956?q=80&w=761&auto=format&fit=crop',
    name: 'Charlotte Parker',
  ),
  FriendModel(
    id: 'friend_4',
    image:
        'https://images.unsplash.com/photo-1599566150163-29194dcaad36?q=80&w=687&auto=format&fit=crop',
    name: 'CarsonP',
  ),
];

final List<ActivityModel> activities = [
  ActivityModel(
    id: 'act_1',
    userName: 'Shannonisthebest',
    userImage:
        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=300&auto=format&fit=crop',
    message: 'Why is Tom Riddle also referred to as the father?',
    timeAgo: '3h',
  ),
  ActivityModel(
    id: 'act_2',
    userName: 'Miley Cyrus',
    userImage:
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=300&auto=format&fit=crop',
    message: "It's cause his father was also named Tom Riddle",
    timeAgo: '3h',
  ),
  ActivityModel(
    id: 'act_3',
    userName: 'Charlotte Parker',
    userImage:
        'https://images.unsplash.com/photo-1580489944761-15a19d654956?q=80&w=300&auto=format&fit=crop',
    message: 'Anyone else really really love chapter 12?',
    timeAgo: '4h',
  ),
  ActivityModel(
    id: 'act_4',
    userName: 'Tonya Gray',
    userImage:
        'https://plus.unsplash.com/premium_photo-1690407617542-2f210cf20d7e?q=80&w=300&auto=format&fit=crop',
    message: "I'm not there yet, wait for meeeee!",
    timeAgo: '4h',
  ),
  ActivityModel(
    id: 'act_5',
    userName: 'Amy Winnar',
    userImage: '',
    message:
        'When they revealed who it was, I was crying for 30m. The twist was so beautiful',
    timeAgo: '2h',
  ),
  ActivityModel(
    id: 'act_6',
    userName: 'Brittany Sullivan',
    userImage:
        'https://plus.unsplash.com/premium_photo-1671656349218-5218444643d8?w=300&auto=format&fit=crop&q=60',
    message: 'Wait until you get to chapter 14 :O',
    timeAgo: '3h',
  ),
];

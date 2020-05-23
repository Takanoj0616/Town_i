# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
customer =  Customer.create!(
  email: 'ttatat@co.jp',
  password: '123456',
  name: '佐藤',
  follower_id: 1,
  followered_id: 1 ,
  explanation: '周りに商店街があって良い所です‼。',
  image: File.open('./app/assets/images/big-star.png'),
)
customer =  Customer.create!(
  email: 'aaaa@co.jp',
  password: '123456',
  name: '織田',
  follower_id: 2,
  followered_id: 2 ,
  explanation: '駅周辺が賑わっています‼。',
  image: File.open('./app/assets/images/big-star.png'),
)
customer =  Customer.create!(
  email: 'bbbb@co.jp',
  password: '123456',
  name: '佐々木',
  follower_id: 3,
  followered_id: 3 ,
  explanation: '友達が近くに住んでいます‼。',
  image: File.open('./app/assets/images/big-star.png'),
)
customer =  Customer.create!(
  email: 'ccc@co.jp',
  password: '123456',
  name: '須田',
  follower_id: 4,
  followered_id: 4 ,
  explanation: '駅から離れたら閑静な住宅街です‼。',
  image: File.open('./app/assets/images/big-star.png'),
)
customer =  Customer.create!(
  email: 'ddd@co.jp',
  password: '123456',
  name: '堀',
  follower_id: 5,
  followered_id: 5 ,
  explanation: '地元です‼。',
  image: File.open('./app/assets/images/big-star.png'),
)
customer =  Customer.create!(
  email: 'eee@co.jp',
  password: '123456',
  name: 'まる',
  follower_id: 6,
  followered_id: 6 ,
  explanation: '５年住んでます‼。',
  image: File.open('./app/assets/images/big-star.png'),
)
customer =  Customer.create!(
  email: 'fff@co.jp',
  password: '123456',
  name: '藤田',
  follower_id: 7,
  followered_id: 7 ,
  explanation: '夫婦ですんでいます‼。',
  image: File.open('./app/assets/images/big-star.png'),
)
customer =  Customer.create!(
  email: 'ggg@co.jp',
  password: '123456',
  name: '剛田',
  follower_id: 8,
  followered_id: 8 ,
  explanation: '５分で駅に行けます‼。',
  image: File.open('./app/assets/images/big-star.png'),
)
customer =  Customer.create!(
  email: 'hhh@co.jp',
  password: '123456',
  name: '羽田',
  follower_id: 9,
  followered_id: 9,
  explanation: '交通の弁が良いです‼。',
  image: File.open('./app/assets/images/big-star.png'),
)
customer =  Customer.create!(
  email: 'iii@co.jp',
  password: '123456',
  name: '糸田',
  follower_id: 10,
  followered_id: 10 ,
  explanation: 'この先も住みたいと考えています‼。',
  image: File.open('./app/assets/images/big-star.png'),
)


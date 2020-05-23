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

    post = Post.create!(
  town_name: '横浜',
  comment: 'コメントコメント',
  image: File.open('./app/assets/images/big-star.png'),
  customer_id: 1,
)

   post = Post.create!(
  town_name: '横浜',
  comment: 'コメントコメント',
  image: File.open('./app/assets/images/big-star.png'),
  customer_id: 1,
)

   post = Post.create!(
  town_name: '横浜',
  comment: 'コメントコメント',
  image: File.open('./app/assets/images/big-star.png'),
  customer_id: 1,
)

   post = Post.create!(
  town_name: '横浜',
  comment: 'コメントコメント',
  image: File.open('./app/assets/images/big-star.png'),
  customer_id: 1,
)

   post = Post.create!(
  town_name: '横浜',
  comment: 'コメントコメント',
  image: File.open('./app/assets/images/big-star.png'),
  customer_id: 1,
)

   post = Post.create!(
  town_name: '横浜',
  comment: 'コメントコメント',
  image: File.open('./app/assets/images/big-star.png'),
  customer_id: 1,
)

   post = Post.create!(
  town_name: '横浜',
  comment: 'コメントコメント',
  image: File.open('./app/assets/images/big-star.png'),
  customer_id: 1,
)

   post = Post.create!(
  town_name: '横浜',
  comment: 'コメントコメント',
  image: File.open('./app/assets/images/big-star.png'),
  customer_id: 1,
)

   post = Post.create!(
  town_name: '横浜',
  comment: 'コメントコメント',
  image: File.open('./app/assets/images/big-star.png'),
  customer_id: 1,
)

   post = Post.create!(
  town_name: '横浜',
  comment: 'コメントコメント',
  image: File.open('./app/assets/images/big-star.png'),
  customer_id: 1,
)

city_introduction =  CityIntroduction .create!(
name: '鈴木',
address: 'aaa@co.jp',
introduction: '横浜',
comment: '都市景観100選受賞地区にも選ばれた横浜みなとみらいには横浜みなと博物館、パシフィコ横浜、横浜ランドマークタワー、よこはまコスモワールド、赤レンガ倉庫などの観光スポットが点在している。',
created_at: 1,
updated_at: 1,
image: File.open('./app/assets/images/station/yokohama.jpg'),
customer_id: 1,
)

city_introduction =  CityIntroduction .create!(
name: '鈴木',
address: 'bbb@co.jp',
introduction: '品川',
comment: '品川は品川駅に新幹線が通っている事もあり、ターミナル駅として日々多くの人で賑わうエリア。高層ビルが立ち並ぶ近代的な街並みの中には、実は人気スポットもたくさんある。',
created_at: 2,
updated_at: 2,
image: File.open('./app/assets/images/station/sinagawa.jpg'),
customer_id: 2,
)

city_introduction =  CityIntroduction .create!(
name: '鈴木',
address: 'bbb@co.jp',
introduction: '新橋',
comment: '駅前の広場全体を「ＳＬ広場」というが、待ち合わせスポットがある。また、東の汐留口側には電通や日本テレビ、パナソニックなどの本社が居を構えるオフィス街になっている。',
created_at: 3,
updated_at: 3,
image: File.open('./app/assets/images/station/shinbashi.jpg'),
customer_id: 3,
)

city_introduction =  CityIntroduction .create!(
name: '鈴木',
address: 'bbb@co.jp',
introduction: '新宿',
comment: '新宿駅の乗降客数は全路線合計で約342万人（2015年）と言われており、この数字は世界一の数字でギネス記録にも認定されている。東口が有名で、アルタや伊勢丹などがある新宿通りと、歌舞伎町がある靖国通りがメイン通りといえる。',
created_at: 4,
updated_at: 4,
image: File.open('./app/assets/images/station/shinzyuku.jpg'),
customer_id: 4,
)

city_introduction =  CityIntroduction .create!(
name: '鈴木',
address: 'bbb@co.jp',
introduction: '東京',
comment: '日本経済の中心的な役割を担う企業が多く集積する丸の内、八重洲。創建当時の姿に復原された、「東京駅赤煉瓦駅舎」をはじめ、丸の内ブリックスクエア、KITTEといった新名所が街に新たな魅力を加えている。',
created_at: 5,
updated_at: 5,
image: File.open('./app/assets/images/station/toukyou.jpg'),
customer_id: 5,
)

city_introduction =  CityIntroduction .create!(
name: '鈴木',
address: 'bbb@co.jp',
introduction: '渋谷',
comment: '1日の通行人数は約50万人とも言われ、世界でも類を見ない通行量を誇るスクランブル交差点。JR東日本、京王電鉄、東急電鉄、東京メトロという4社の路線が乗り入れるターミナル駅になる。',
created_at: 6,
updated_at: 6,
image: File.open('./app/assets/images/station/sibuya.jpg'),
customer_id: 6,
)

city_introduction =  CityIntroduction .create!(
name: '鈴木',
address: 'bbb@co.jp',
introduction: '池袋',
comment: '駅西口の『サンシャインシティ』は娯楽・観光のメッカとなっているほか、大ヒットドラマの舞台となった『池袋西口公園』も現在は池袋を象徴するスポットとして有名。横浜や大宮方面にも乗換せずに行けるため、交通アクセスは抜群に良い。',
created_at: 7,
updated_at: 7,
image: File.open('./app/assets/images/station/ikebukuro.jpg'),
customer_id: 7,
)

city_introduction =  CityIntroduction .create!(
name: '鈴木',
address: 'bbb@co.jp',
introduction: '上野',
comment: '上野の特徴は、山手と下町の両方が共存している点。山手エリアは台地の上にある上野公園が中心で、国立西洋美術館をはじめ上野動物園など数多くの文化施設が集中。北側には、東京芸術大学のなど、閑静な住宅地が広がる。',
created_at: 8,
updated_at: 8,
image: File.open('./app/assets/images/station/ueno.jpg'),
customer_id: 8,
)

city_introduction =  CityIntroduction .create!(
name: '鈴木',
address: 'bbb@co.jp',
introduction: '秋葉原',
comment: '秋葉原の特徴としてあげられるのは、オタクの聖地です。家電店とコミックやフィギュアやメイド喫茶など、家電とオタクの雰囲気が交わった街です。日曜は歩行者天国になるため、一層賑わいを見せます。アニメや家電に興味がなくても、行くと独特の雰囲気があり楽しめます。',
created_at: 9,
updated_at: 9,
image: File.open('./app/assets/images/station/akihabara.jpg'),
customer_id: 9,
)

ity_introduction =  CityIntroduction .create!(
name: '鈴木',
address: 'bbb@co.jp',
introduction: '恵比寿',
comment: 'JR山手線、埼京線、湘南新宿ラインと東京メトロ日比谷線が利用可能で交通の弁は良く、恵比寿のランドマークといわれる『恵比寿ガーデンプレイス』や駅ビルの『アトレ恵比寿』、アトレ恵比寿西館の新設や中高層マンションの建築など、時代のトレンドを先取りする街並みがあります。',
created_at: 10,
updated_at: 10,
image: File.open('./app/assets/images/station/ebisu.jpg'),
customer_id: 10,
)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
customer_1 =  Customer.create!(
  email: 'ttatat@co.jp',
  password: '123456',
  name: '佐藤',
)

customer_2 =  Customer.create!(
  email: 'ttrr@co.jp',
  password: '12345678',
  name: '佐藤',
)

post_1 = Post .create!(
  town_name: '横浜',
  comment: 'コメントコメント',
  image: File.open('./app/assets/images/big-star.png'),
  customer_id: customer_1.id,
)

Contributor.create!(
   type_id: 1,
   name: '太郎',
   follower_id: customer_1.id,
   followered_id: customer_2.id ,
   explanation: '説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。',
   image: File.open('./app/assets/images/big-star.png'),
   post_id: post_1.id,
 )

 Contributor.create!(
   type_id: 2,
   name: '鈴木',
   follower_id: customer_1.id,
   followered_id: customer_2.id ,
   explanation: '説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。',
   image: File.open('./app/assets/images/big-star.png'),
   post_id: post_1.id,
 )

 Contributor.create!(
   type_id: 3,
   name: '佐藤',
   follower_id: customer_1.id,
   followered_id: customer_2.id ,
   explanation: '説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。',
   image: File.open('./app/assets/images/big-star.png'),
   post_id: post_1.id,
 )

 Contributor.create!(
   type_id: 4,
   name: '太田',
   follower_id: customer_1.id,
   followered_id: customer_2.id ,
   explanation: '説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。',
   image: File.open('./app/assets/images/big-star.png'),
   post_id: post_1.id,
 )

 Contributor.create!(
   type_id: 5,
   name: '田中',
   follower_id: customer_1.id,
   followered_id: customer_2.id ,
   explanation: '説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。',
   image: File.open('./app/assets/images/big-star.png'),
   post_id: post_1.id,
 )

city_introduction_1 =  CityIntroduction .create!(
name: '田中',
address: 'aaa@co.jp',
introduction: '横浜',
comment: 'コメントコメント',
created_at: 1,
updated_at: 1,
image: File.open('./app/assets/images/big-star.png'),
customer_id: customer_1.id,
)

 Station.create!(
  type_id: 1,
 name: '横浜',
  explanation: '都市景観100選受賞地区にも選ばれた横浜みなとみらいには横浜みなと博物館、パシフィコ横浜、横浜ランドマークタワー、よこはまコスモワールド、赤レンガ倉庫などの観光スポットが点在している。',
   image: File.open('./app/assets/images/station/yokohama.jpg'),
   city_introduction_id: city_introduction_1.id
 )

 Station.create!(
   type_id: 2,
   name: '品川',
  explanation: '品川は品川駅に新幹線が通っている事もあり、ターミナル駅として日々多くの人で賑わうエリア。高層ビルが立ち並ぶ近代的な街並みの中には、実は人気スポットもたくさんある。',
  image: File.open('./app/assets/images/station/sinagawa.jpg'),
  city_introduction_id: city_introduction_1.id
 )

 Station.create!(
   type_id: 3,
   name: '新橋',
   explanation: '駅前の広場全体を「ＳＬ広場」というが、待ち合わせスポットがある。また、東の汐留口側には電通や日本テレビ、パナソニックなどの本社が居を構えるオフィス街になっている。',
   image: File.open('./app/assets/images/station/shinbashi.jpg'),
   city_introduction_id: city_introduction_1.id
 )

 Station.create!(
    type_id: 4,
   name: '新宿',
   explanation: '新宿駅の乗降客数は全路線合計で約342万人（2015年）と言われており、この数字は世界一の数字でギネス記録にも認定されている。東口が有名で、アルタや伊勢丹などがある新宿通りと、歌舞伎町がある靖国通りがメイン通りといえる。',
   image: File.open('./app/assets/images/station/shinzyuku.jpg'),
   city_introduction_id: city_introduction_1.id
 )

 Station.create!(
   type_id: 5,
   name: '渋谷',
   explanation: '1日の通行人数は約50万人とも言われ、世界でも類を見ない通行量を誇るスクランブル交差点。JR東日本、京王電鉄、東急電鉄、東京メトロという4社の路線が乗り入れるターミナル駅になる。',
   image: File.open('./app/assets/images/station/sibuya.jpg'),
   city_introduction_id: city_introduction_1.id
 )

 Station.create!(
   type_id: 6,
   name: '東京',
   explanation: '日本経済の中心的な役割を担う企業が多く集積する丸の内、八重洲。創建当時の姿に復原された、「東京駅赤煉瓦駅舎」をはじめ、丸の内ブリックスクエア、KITTEといった新名所が街に新たな魅力を加えている。',
   image: File.open('./app/assets/images/station/toukyou.jpg'),
   city_introduction_id: city_introduction_1.id
 )

 Station.create!(
  type_id: 7,
  name: '上野',
  explanation: '上野の特徴は、山手と下町の両方が共存している点。山手エリアは台地の上にある上野公園が中心で、国立西洋美術館をはじめ上野動物園など数多くの文化施設が集中。北側には、東京芸術大学のなど、閑静な住宅地が広がる。',
   image: File.open('./app/assets/images/station/ueno.jpg'),
   city_introduction_id: city_introduction_1.id
 )

 Station.create!(
   type_id: 8,
   name: '池袋',
   explanation: '駅西口の『サンシャインシティ』は娯楽・観光のメッカとなっているほか、大ヒットドラマの舞台となった『池袋西口公園』も現在は池袋を象徴するスポットとして有名。横浜や大宮方面にも乗換せずに行けるため、交通アクセスは抜群に良い。',
   image: File.open('./app/assets/images/station/ikebukuro.jpg'),
   city_introduction_id: city_introduction_1.id
 )

 Station.create!(
   type_id: 9,
   name: '秋葉原',
   explanation: '葉原の特徴としてあげられるのは、オタクの聖地です。家電店とコミックやフィギュアやメイド喫茶など、家電とオタクの雰囲気が交わった街です。日曜は歩行者天国になるため、一層賑わいを見せます。アニメや家電に興味がなくても、行くと独特の雰囲気があり楽しめます。',
   image: File.open('./app/assets/images/station/akihabara.jpg'),
   city_introduction_id: city_introduction_1.id
 )

  Station.create!(
   type_id: 10,
   name: '恵比寿',
   explanation: 'JR山手線、埼京線、湘南新宿ラインと東京メトロ日比谷線が利用可能で交通の弁は良く、恵比寿のランドマークといわれる『恵比寿ガーデンプレイス』や駅ビルの『アトレ恵比寿』、アトレ恵比寿西館の新設や中高層マンションの建築など、時代のトレンドを先取りする街並みがあります。',
   image: File.open('./app/assets/images/station/ebisu.jpg'),
   city_introduction_id: city_introduction_1.id
 )

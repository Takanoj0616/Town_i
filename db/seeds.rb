# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Contributor.create!(
   type_id: 1,
   name: '太郎',
   explanation: '説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。',
   image: File.open('./app/assets/images/big-star.png'),
 )

 Contributor.create!(
   type_id: 2,
   name: '鈴木',
   explanation: '説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。',
   image: File.open('./app/assets/images/big-star.png'),
 )

 Contributor.create!(
   type_id: 3,
   name: '佐藤',
   explanation: '説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。',
   image: File.open('./app/assets/images/big-star.png'),
 )

 Contributor.create!(
   type_id: 4,
   name: '太田',
   explanation: '説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。',
   image: File.open('./app/assets/images/big-star.png'),
 )

 Contributor.create!(
   type_id: 5,
   name: '田中',
   explanation: '説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。説明文です。',
   image: File.open('./app/assets/images/big-star.png'),
 )
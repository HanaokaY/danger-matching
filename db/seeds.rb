p "create Users"
User.create!(
  email: 'user1@gmail.com',
  password: '11111111',
  name: '近所の美女',
  self_introduction: '音楽と猫と美味しいものが好き！',
  gender: 1,
  profile_image: open("#{Rails.root}/db/dummy_images/1.jpg"),
  image_binary: ''
)
User.create!(
  email: 'user2@gmail.com',
  password: '11111111',
  name: '南区の刺客',
  self_introduction: 'クリエイターさんと話してみたい。',
  gender: 1,
  profile_image: open("#{Rails.root}/db/dummy_images/2.jpg"),
  image_binary: ''
)
User.create!(
  email: 'user3@gmail.com',
  password: '11111111',
  name: 'ダチ姐さん',
  self_introduction: 'プロフィールをご覧いただきありがとうございます。東京でWebマーケティング関連の仕事をしています。',
  gender: 1,
  profile_image: open("#{Rails.root}/db/dummy_images/3.jpg"),
  image_binary: ''
)
User.create!(
  email: 'user4@gmail.com',
  password: '11111111',
  name: '佐々木',
  self_introduction: '東京で美容師をしています。',
  gender: 0,
  profile_image: open("#{Rails.root}/db/dummy_images/4.jpg"),
  image_binary: ''
)
User.create!(
  email: 'user5@gmail.com',
  password: '11111111',
  name: '東区の刺客',
  self_introduction: '普段は公認会計士として働いています',
  gender: 0,
  profile_image: open("#{Rails.root}/db/dummy_images/5.jpg"),
  image_binary: ''
)
User.create!(
  email: 'user6@gmail.com',
  password: '11111111',
  name: 'オリバ',
  self_introduction: '週3日くらい1人ラーメンします',
  gender: 0,
  profile_image: open("#{Rails.root}/db/dummy_images/6.jpg"),
  image_binary: ''
)
User.create!(
    email: 'user7@gmail.com',
    password: '11111111',
    name: 'HIKI',
    self_introduction: '韓国からの刺客。1日10本タバコ吸います。',
    gender: 1,
    profile_image: open("#{Rails.root}/db/dummy_images/7.jpg"),
    image_binary: ''
  )

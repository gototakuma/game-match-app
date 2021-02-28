BulletinBoard.create!(
  title: 'Apex掲示板',
  description: 'フレンドたくさん作ってください！'
)
BulletinBoard.create!(
  title: 'R6S好き集まれー！',
  description: '出会い目的は禁止です！！'
)
puts '掲示板タイトル作成！'

MessagePost.create!(
  name: '山田　太郎',
  gender: '男',
  game_id: '00347',
  purpose: 'フレンド',
  message: 'みんなで楽しくやろうぜ！',
  bulletin_board_id: 1
)
MessagePost.create!(
  name: '山田　次郎',
  gender: '男',
  game_id: '01247',
  purpose: '対戦',
  message: 'みんなで楽しくやろうぜ！',
  bulletin_board_id: 1
)
MessagePost.create!(
  name: '山田　花子',
  gender: '女',
  game_id: '98123',
  purpose: 'その他',
  message: 'みんなで楽しくやろうぜ！',
  bulletin_board_id: 1
)
MessagePost.create!(
  name: 'レインボー太郎',
  gender: '男',
  game_id: '0853',
  purpose: 'フレンド',
  message: 'みんなで楽しくやろうぜ！',
  bulletin_board_id: 2
)
MessagePost.create!(
  name: 'レインボー次郎',
  gender: '男',
  game_id: '583',
  purpose: 'フレンド',
  message: 'みんなで楽しくやろうぜ！',
  bulletin_board_id: 2
)
puts '投稿作成！'
MissionMaster.first_or_create([
  { id: 1, title: 'そばを食え', content: 'そばを食え。', opened_at: 1404486000, closed_at: 1404572399 },
  { id: 2, title: 'コンビニを調査せよ', content: 'コンビニを調査しろ。コンビニを見つけて報告してくれ。', opened_at: 1404572400, closed_at: 1404658799 },
  { id: 3, title: '最新のカメラを調査せよ', content: '最新のカメラについて調べ報告してくれ。', opened_at: 1404658800, closed_at: 1404745199 },
  { id: 4, title: 'ボールを手に入れろ', content: '種類はなんでもいい。ボールを入手してくれ。', opened_at: 1404745200, closed_at: 1404831599 },
  { id: 5, title: 'ソーメンを食べろ', content: 'ソーメンを食べて報告してくれ。', opened_at: 1404831600, closed_at: 1404917999 },
  { id: 6, title: 'ネクタイを入手しろ', content: 'ネクタイを入手して報告しろ。', opened_at: 1404918000, closed_at: 1405004399 },
  { id: 7, title: 'パスタを食べろ', content: 'パスタを食べて報告しろ。', opened_at: 1405004400, closed_at: 1405090799 },
  { id: 8, title: 'お茶を入手しろ', content: 'お茶を入手して報告しろ。', opened_at: 1405090800, closed_at: 1405177199 },
  { id: 9, title: '目薬を入手しろ', content: '目薬を入手して報告しろ。', opened_at: 1405177200, closed_at: 1405263599 },
  { id: 10, title: '薬を入手しろ', content: '種類はなんでもいい。薬を入手して報告しろ。', opened_at: 1405263600, closed_at: 1405349999 },
  { id: 11, title: '本を1冊読破しろ', content: 'ジャンルは問わない。本を読破して報告しろ。', opened_at: 1405350000, closed_at: 1405609199 },
  { id: 12, title: 'チャーハンを食え', content: 'チャーハンを食って報告しろ。', opened_at: 1405609200, closed_at: 1405695599 },
  { id: 13, title: 'ヨーグルトを食え', content: 'ヨーグルトを食って報告しろ。', opened_at: 1405695600, closed_at: 1405868399 },
  { id: 14, title: 'お気に入りのカバンをみせろ', content: 'お気に入りのカバンをみせてくれ。毎日使ってるカバンでもいい。', opened_at: 1405868400, closed_at: 1405954799 },
  { id: 15, title: 'コップを手に入れろ', content: 'コップを手に入れて報告しろ。', opened_at: 1405954800, closed_at: 1406041199 }
])


Counter.first_or_create(
 id: 1, challenge_num: 0
)

# ユビキタス言語データ（例）の作成
UbiquitousTerm.create([
  { domain_name: 'コマ', program_singularized_name: 'Panel', program_pluralized_name: 'Panels', note: '4コマ漫画の一コマを表す' },
  { domain_name: '漫画', program_singularized_name: 'Comic', program_pluralized_name: 'Comics', note: '漫画などでいうタイトルなどの情報' },
  { domain_name: '作家', program_singularized_name: 'Author', program_pluralized_name: 'Authors', note: 'この漫画の作者などの情報' },
  { domain_name: '話（わ)', program_singularized_name: 'Story', program_pluralized_name: 'Stories', note: '週刊誌に乗ったりする場合の第1話' },
])

# コネクタの作成
Connector.create([
  { show_name: '商品', select_name: '商品 ↑', direction: 'fa fa-long-arrow-up' },
  { show_name: '商品', select_name: '商品 ←', direction: 'fa fa-long-arrow-left' },
  { show_name: '商品', select_name: '商品 →', direction: 'fa fa-long-arrow-right' },
  { show_name: '商品', select_name: '商品 ↓', direction: 'fa fa-long-arrow-down' },
  { show_name: 'マーケティング', select_name: 'マーケティング ↑', direction: 'fa fa-long-arrow-up' },
  { show_name: 'マーケティング', select_name: 'マーケティング ←', direction: 'fa fa-long-arrow-left' },
  { show_name: 'マーケティング', select_name: 'マーケティング →', direction: 'fa fa-long-arrow-right' },
  { show_name: 'マーケティング', select_name: 'マーケティング ↓', direction: 'fa fa-long-arrow-down' },
  { show_name: 'お金', select_name: 'お金 ↑', direction: 'fa fa-long-arrow-up' },
  { show_name: 'お金', select_name: 'お金 ←', direction: 'fa fa-long-arrow-left' },
  { show_name: 'お金', select_name: 'お金 →', direction: 'fa fa-long-arrow-right' },
  { show_name: 'お金', select_name: 'お金 ↓', direction: 'fa fa-long-arrow-down' }
])

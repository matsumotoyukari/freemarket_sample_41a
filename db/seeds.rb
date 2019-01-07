# 以下　areaテーブル　使用するときに

# Area.create(name: "北海道")
# Area.create(name: "青森県")
# Area.create(name: "岩手県")
# Area.create(name: "宮城県")
# Area.create(name: "秋田県")
# Area.create(name: "山形県")
# Area.create(name: "福島県")
# Area.create(name: "東京都")
# Area.create(name: "神奈川県")
# Area.create(name: "埼玉県")
# Area.create(name: "千葉県")
# Area.create(name: "茨城県")
# Area.create(name: "栃木県")
# Area.create(name: "群馬県")
# Area.create(name: "山梨県")
# Area.create(name: "新潟県")
# Area.create(name: "長野県")
# Area.create(name: "富山県")
# Area.create(name: "石川県")
# Area.create(name: "福井県")
# Area.create(name: "愛知県")
# Area.create(name: "岐阜県")
# Area.create(name: "静岡県")
# Area.create(name: "三重県")
# Area.create(name: "大阪府")
# Area.create(name: "兵庫県")
# Area.create(name: "京都府")
# Area.create(name: "滋賀県")
# Area.create(name: "奈良県")
# Area.create(name: "和歌山県")
# Area.create(name: "鳥取県")
# Area.create(name: "島根県")
# Area.create(name: "岡山県")
# Area.create(name: "広島県")
# Area.create(name: "山口県")
# Area.create(name: "徳島県")
# Area.create(name: "香川県")
# Area.create(name: "愛媛県")
# Area.create(name: "高知県")
# Area.create(name: "福岡県")
# Area.create(name: "佐賀県")
# Area.create(name: "長崎県")
# Area.create(name: "福本県")
# Area.create(name: "大分県")
# Area.create(name: "宮崎県")
# Area.create(name: "鹿児島県")
# Area.create(name: "沖縄県")



# サイズタイプ
# Sizetype.create(name: "服のサイズ")
# Sizetype.create(name: "靴のサイズ")


# サイズ

# Size.create(name: "XXS以下",sizetype_id: 1)
# Size.create(name: "XS(SS)",sizetype_id: 1)
# Size.create(name: "S",sizetype_id: 1)
# Size.create(name: "M",sizetype_id: 1)
# Size.create(name: "L",sizetype_id: 1)
# Size.create(name: "XL(LL)",sizetype_id: 1)
# Size.create(name: "2XL(3L)",sizetype_id: 1)
# Size.create(name: "3XL(4L)",sizetype_id: 1)
# Size.create(name: "4XL(5L)以上",sizetype_id: 1)
# Size.create(name: "FREE SIZE",sizetype_id: 1)

# Size.create(name: "23.5cm以下",sizetype_id: 2)
# Size.create(name: "24cm",sizetype_id: 2)
# Size.create(name: "24.5cm",sizetype_id: 2)
# Size.create(name: "25cm",sizetype_id: 2)
# Size.create(name: "25.5cm",sizetype_id: 2)
# Size.create(name: "26cm",sizetype_id: 2)
# Size.create(name: "26.5cm",sizetype_id: 2)
# Size.create(name: "27cm",sizetype_id: 2)
# Size.create(name: "27.5cm",sizetype_id: 2)
# Size.create(name: "28cm",sizetype_id: 2)
# Size.create(name: "28.5cm",sizetype_id: 2)
# Size.create(name: "29cm",sizetype_id: 2)
# Size.create(name: "29.5cm",sizetype_id: 2)
# Size.create(name: "30cm",sizetype_id: 2)
# Size.create(name: "30.5cm",sizetype_id: 2)
# Size.create(name: "31cm以上",sizetype_id: 2)


# カテゴリーテーブル

ladies, mens,baby,interior,book_music_game,toy_hoby_goods,kosumebiyou,kadensumaho,sportleja,handmade,ticket,car_autoby,sonota1 = Category.create([{name: "レディース"}, {name: "メンズ"},{name: "ベビー・キッズ"},{name: "インテリア・住まい・小物"},{name: "本・音楽・ゲーム"},{name: "おもちゃ・ホビー・グッズ"},{name: "コスメ・香水・美容"},{name: "家電・スマホ・カメラ"},{name: "スポーツ・レジャー"},{name: "ハンドメイド"},{name: "チケット"},{name: "自動車・オートバイ"},{name: "その他"}])

# レディース
tops,jaket_outer,pants,skart,wanpice,shoo,roomwea,regwea,hat,bag,acesary,hairacesary,komono,tokeil,wigexste,yukata,sutu,matanity,sonota = ladies.children.create([{name: "トップス"},{name: "ジャケット/アウター"},{name: "パンツ"},{name: "スカート"},{name: "ワンピース"},{name: "靴"},{name: "ルームウェア/パジャマ"},{name: "レッグウェア"},{name: "帽子"},{name: "バッグ"},{name: "アクセサリー"},{name: "ヘアアクセサリー"},{name: "小物"},{name: "時計"},{name: "ウィッグ/エクステ"},{name: "浴衣/水着"},{name: "スーツ/フォーマル/ドレス"},{name: "マタニティ"},{name: "その他"}])

tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"},{name: "シャツ/ブラウス(半袖/袖なし)"}, {name: "シャツ/ブラウス(七分/長袖)"},{name: "ポロシャツ"},{name: "キャミソール"},{name: "タンクトップ"},{name: "ホルターネック"},{name: "ニット/セーター"},{name: "チュニック"},{name: "カーディガン/ボレロ"},{name: "アンサンブル"},{name: "ベスト/ジレ"},{name: "パーカー"},{name: "トレーナー/スウェット"},{name: "ベアトップ/チューブトップ"},{name: "その他"}])
jaket_outer.children.create([{name: "テーラードジャケット"},{name: "ノーカラージャケット"},{name: "Gジャン/デニムジャケット"},{name: "レザージャケット"},{name: "ダウンジャケット"},{name: "ライダースジャケット"},{name: "ミリタリージャケット"},{name: "ダウンベスト"},{name: "ジャンパー/ブルゾン"},{name: "ポンチョ"},{name: "ロングコート"},{name: "トレンチコート"},{name: "ダッフルコート"},{name: "ピーコート"},{name: "チェスターコート"},{name: "モッズコート"},{name: "スタジャン"},{name: "毛皮/ファーコート"},{name: "スプリントコート"},{name: "スカジャン"},{name: "その他"}])

pants.children.create([{name: "デニム/ジーンズ"}, {name: "ショートパンツ"},{name: "カジュアルパンツ"}, {name: "ハーフパンツ"},{name: "チノパン"},{name: "ワークパンツ/カーゴパンツ"},{name: "クロップドパンツ"},{name: "サロペット/オーバーオール"},{name: "オールインワン"},{name: "サルエルパンツ"},{name: "ガウチョパンツ"},{name: "その他"}])

skart.children.create([{name: "ミニスカート"},{name: "ひざ丈スカート"},{name: "ロングスカート"},{name: "キュロット"},{name: "その他"}])

wanpice.children.create([{name: "ミニワンピース"},{name: "ひざ丈ワンピース"},{name: "ロングワンピース"},{name: "その他"}])

shoo.children.create([{name: "ハイヒール/パンプス"},{name: "ブーツ"},{name: "サンダル"},{name: "スニーカー"},{name: "ミュール"},{name: "モカシン"},{name: "ローファー/革靴"},{name: "フラットシューズ/バレエシューズ"},{name: "長靴/レインシューズ"},{name: "その他"}])


roomwea.children.create([{name: "パジャマ"},{name: "ルームウェア"}])

regwea.children.create([{name: "ソックス"},{name: "スパッツ/レギンス"},{name: "ストッキング/タイツ"},{name: "レッグウォーマー"},{name: "その他"}])

hat.children.create([{name: "ニットキャップ/ビーニー"},{name: "ハット"},{name: "ハッチング/ベレー帽"},{name: "キャップ"},{name: "キャスケット"},{name: "麦わら帽子"},{name: "その他"}])

bag.children.create([{name: "ハンドバッグ"},{name: "トートバッグ"},{name: "エコバッグ"},{name: "リュック/バックパック"},{name: "ボストンバック"},{name: "スポーツバッグ"},{name: "ショルダーバッグ"},{name: "クラッチバッグ"},{name: "ポーチ/バニティ"},{name: "ボディバッグ/ウェストバッグ"},{name: "マザーズバッグ"},{name: "メッセンジャーバッグ"},{name: "ビジネスバッグ"},{name: "旅行用バッグ/キャリーバッグ"},{name: "ショップ袋"},{name: "和装用バッグ"},{name: "かごバッグ"},{name: "その他"}])


acesary.children.create([{name: "ネックレス"},{name: "ブレスレット"},{name: "バングル/リストバンド"},{name: "リング"},{name: "ピアス(片耳用)"},{name: "ピアス(両耳用)"},{name: "イヤリング"},{name: "アンクレット"},{name: "ブローチ/コサージュ"},{name: "チャーム"},{name: "その他"}])

hairacesary.children.create([{name: "ヘアゴム/シュシュ"},{name: "ヘアバンド/カチューシャ"},{name: "ヘアピン"},{name: "その他"}])


["長財布","折り財布","コインケース/小銭入れ","名刺入れ/定期入れ","キーケース","キーホルダー","手袋/アームカバー","ハンカチ","ベルト","マフラー/ショール","ストール/スヌード","バンダナ/スカーフ","ネックウォーマー","サスペンダー","サングラス/メガネ","モバイルケース/カバー","手帳","イヤマフラー","傘","レインコート/ポンチョ","ミラー","タバコグッズ","その他"].each do |name|

  komono.children.create(name: name)

end

["腕時計(アナログ)","腕時計(デジタル)","ラバーベルト","レザーベルト","金属ベルト","その他"].each do |name|

  tokeil.children.create(name: name)

end

["前髪ウィッグ","ロングストレート","ロングカール","ショートストレート","ショートカール","その他"].each do |name|
  wigexste.children.create(name: name)
end

["浴衣","着物","振袖","長襦袢/半襦袢","水着セパレート","水着ワンピース","水着スポーツ用","その他"].each do |name|
  yukata.children.create(name: name)
end

["スカートスーツ上下","パンツスーツ上下","ドレス","パーティーバッグ","シューズ","ウェディング","その他"].each do |name|
  sutu.children.create(name: name)
end

["トップス","アウター","インナー","ワンピース","パンツ/スパッツ","スカート","パジャ","授乳服","その他"].each do |name|
  matanity.children.create(name: name)
end

["コスプレ","下着","その他"].each do |name|
  sonota.children.create(name: name)
end




# メンズ
tops,jaket_outer,pants,shoo,bag,sutu,hat,acesary,komono,tokeim,mizugi,regwea,underwea,sonota = mens.children.create([{name: "トップス"},{name: "ジャケット/アウター"},{name: "パンツ"},{name: "靴"},{name: "バッグ"},{name: "スーツ"},{name: "帽子"},{name: "アクセサリー"},{name: "小物"},{name: "時計"},{name: "水着"},{name: "レッグウェア"},{name: "アンダーウェア"},{name: "その他"}])

["Tシャツ/カットソー(半袖/袖なし)","Tシャツ/カットソー(七分/長袖)","シャツ","ポロシャツ","タンクトップ","ニット/セーター","パーカー","カーディガン","スウェット","ジャージ","ベスト","その他"].each do |name|
  tops.children.create(name: name)
end

["テーラードジャケット","ノーカラージャケット","Gジャン/デニムジャケット","レザージャケット","ダウンジャケット","ライダースジャケット","ミリタリージャケット","ナイロンジャケット","フライトジャケット","ダッフルコート","ピーコート","ステンカラーコート","トレンチコート","モッズコー","チェスターコート","スタジャン","スカジャン","ブルゾン","マウンテンパーカー","ダウンベスト","ポンチョ","カバーオール","その他"].each do |name|
  jaket_outer.children.create(name: name)
end


["デニム/ジーンズ","ワークパンツ/カーゴパンツ","スラックス","チノパン","ショートパンツ","ペインターパンツ","サルエルパンツ","オーバーオール","その他"].each do |name|
  pants.children.create(name: name)
end


["スニーカー","サンダル","ブーツ","モカシン","ドレス/ビジネス","長靴/レインシューズ","デッキシューズ","その他"].each do |name|
  shoo.children.create(name: name)
end

["ショルダーバッグ","トートバッグ","ボストンバッグ","リュック/バックパック","ウエストポーチ","ボディーバッグ","ドラムバッグ","ビジネスバッグ","トラベルバッグ","メッセンジャーバッグ","エコバッグ","その他"].each do |name|
  bag.children.create(name: name)
end


["スーツジャケット","スーツベスト","スラックス","セットアップ","その他"].each do |name|
  sutu.children.create(name: name)
end

["キャップ","ハット","ニットキャップ/ビーニー","ハンチング/ベレー帽","キャスケット","サンバイザー","その他"].each do |name|
  hat.children.create(name: name)
end

["ネックレス","ブレスレット","バングル/リストバンド","リング","ピアス(片耳用)","ピアス(両耳用)","アンクレット","その他"].each do |name|
  acesary.children.create(name: name)
end


["長財布","折り財布","マネークリップ","コインケース/小銭入れ","名刺入れ/定期入れ","キーケース","キーホルダー","ネクタイ","手袋","ハンカチ","ベルト","マフラー","ストール","バンダナ","ネックウォーマー","サスペンダー","ウォレットチェーン","サングラス/メガネ","モバイルケース/カバー","手帳","ストラップ","ネクタイピン","カフリンクス","イヤマフラー","傘","レインコート","ミラー","タバコグッズ","その他"].each do |name|
  komono.children.create(name: name)
end


["腕時計(アナログ)","腕時計(デジタル)","ラバーベルト","レザーベルト","金属ベルト","その他"].each do|name|
  tokeim.children.create(name: name)
end


["一般水着","スポーツ用","アクセサリー","その他"].each do |name|
  mizugi.children.create(name: name)
end


["ソックス","レギンス/スパッツ","レッグウォーマー","その他"].each do |name|
  regwea.children.create(name: name)
end

["トランクス","ボクサーパンツ","その他"].each do |name|
  underwea.children.create(name: name)
end


# ベビー・キッズ
bwoman,bman,bwm,kidsw,kidsm,kidswm,shoo,komono,omutu,gaishutu,junyuu,kagu,toy,gyouji,sonota = baby.children.create([{name: "ベビー服(女の子用)~95cm"},{name: "ベビー服(男の子用)~95cm"},{name: "ベビー服(男女兼用)~95cm"},{name: "キッズ服(女の子用)100cm~"},{name: "キッズ服(男の子用)100cm~"},{name: "キッズ服(男女兼用)100cm~"},{name: "キッズ靴"},{name: "子供用ファッション小物"},{name: "おむつ/トイレ/バス"},{name: "外出/移動用品"},{name: "授乳/食事"},{name: "ベビー家具/寝具/室内用品"},{name: "おもちゃ"},{name: "行事/記念品"},{name: "その他"}])


["トップス","アウター","パンツ","スカート","ワンピース","ベビードレス","おくるみ","下着/肌着","パジャマ","ロンパース","その他"].each do |name|
  bwoman.children.create(name: name)
end


["トップス","アウター","パンツ","おくるみ","下着/肌着","パジャマ","ロンパース","その他"].each do |name|
  bman.children.create(name: name)
end


["トップス","アウター","パンツ","おくるみ","下着/肌着","パジャマ","ロンパース","その他"].each do |name|
  bwm.children.create(name: name)
end


["コート","ジャケット/上着","トップス(Tシャツ/カットソー)","トップス(トレーナー)","トップス(チュニック)","トップス(タンクトップ)","トップス(その他)","スカート","パンツ","ワンピース","セットアップ","パジャマ","フォーマル/ドレス","和服","浴衣","甚平","水着","その他"].each do |name|
  kidsw.children.create(name: name)
end

["コート","ジャケット/上着","トップス(Tシャツ/カットソー)","トップス(トレーナー)","トップス(その他)","パンツ","セットアップ","パジャマ","フォーマル/ドレス","和服","浴衣","甚平","水着","その他"].each do |name|
  kidsm.children.create(name: name)
end

["コート","ジャケット/上着","トップス(Tシャツ/カットソー)","トップス(トレーナー)","トップス(その他)","ボトムス","パジャマ","その他"].each do |name|
  kidswm.children.create(name: name)
end

["スニーカー","サンダル","ブーツ","長靴","その他"].each do |name|
  shoo.children.create(name: name)
end


["靴下/スパッツ","帽子","エプロン","サスペンダー","タイツ","ハンカチ","バンダナ","ベルト","マフラー","傘","手袋","スタイ","バッグ","その他"].each do |name|
  komono.children.create(name: name)
end

["おむつ用品","おまる/補助便座","トレーニングパンツ","ベビーバス","お風呂用品","その他"].each do |name|
  omutu.children.create(name: name)
end

["ベビーカー","抱っこひも/スリング","チャイルドシート","その他"].each do |name|
  gaishutu.children.create(name: name)
end

["ミルク","ベビーフード","ベビー用食器","その他"].each do |name|
  junyuu.children.create(name: name)
end

["ベッド","布団/毛布","イス","たんす","その他"].each do |name|
  kagu.children.create(name: name)
end

["おふろのおもちゃ","がらがら","オルゴール","ベビージム","手押し車/カタカタ","知育玩具","その他"].each do |name|
  toy.children.create(name: name)
end

["お宮参り用品","お食い初め用品","アルバム","手形/足形","その他"].each do |name|
  gyouji.children.create(name: name)
end

["母子手帳用品","その他"].each do |name|
  sonota.children.create(name: name)
end


# インテリア・住まい・小物
kichin,bed,sofa,isu,table,kagu,rag,karten,light,singu,interia,kisetu,sonota = interior.children.create([{name: "キッチン/食器"},{name: "ベッド/マットレス"},{name: "ソファ/ソファベッド"},{name: "椅子/チェア"},{name: "机/テーブル"},{name: "収納家具"},{name: "ラグ/カーペット/マット"},{name: "カーテン/ブラインド"},{name: "ライト/照明"},{name: "寝具"},{name: "インテリア小物"},{name: "季節/年中行事"},{name: "その他"}])


["食器","調理器具","収納/キッチン雑貨","弁当用品","カトラリー(スプーン等)","テーブル用品","容器","エプロン","アルコールグッズ","浄水機","その他"].each do |name|
  kichin.children.create(name: name)
end


["セミシングルベッド","シングルベッド","セミダブルベッド","ダブルベッド","ワイドダブルベッド","クイーンベッド","キングベッド","脚付きマットレスベッド","マットレス","すのこベッド","ロフトベッド/システムベッド","簡易ベッド/折りたたみベッド","収納付き","その他"].each do |name|
  bed.children.create(name: name)
end


["ソファセット","シングルソファ","ラブソファ","トリプルソファ","オットマン","コーナーソファ","ビーズソファ/クッションソファ","ローソファ/フロアソファ","ソファベッド","応接セット","ソファカバー","リクライニングソファ","その他"].each do |name|
  sofa.children.create(name: name)
end

["一般","スツール","ダイニングチェア","ハイバックチェア","ロッキングチェア","座椅子","折り畳みイス","デスクチェア","その他"].each do |name|
  isu.children.create(name: name)
end

["こたつ","カウンターテーブル","サイドテーブル","センターテーブル","ダイニングテーブル","座卓/ちゃぶ台","アウトドア用","パソコン用","事務机/学習机","その他"].each do |name|
  table.children.create(name: name)
end

["リビング収納","キッチン収納","玄関/屋外収納","バス/トイレ収納","本収納","本/CD/DVD収納","洋服タンス/押入れ収納","電話台/ファックス台","ドレッサー/鏡台","棚/ラック","ケース/ボックス","その他"].each do |name|
  kagu.children.create(name: name)
end

["ラグ","カーペット","ホットカーペット","玄関/キッチンマット","トイレ/バスマット","その他"].each do |name|
  rag.children.create(name: name)
end

["カーテン","ブラインド","ロールスクリーン","のれん","その他"].each do |name|
  karten.children.create(name: name)
end

["蛍光灯/電球","天井照明","フロアスタンド","その他"].each do |name|
  light.children.create(name: name)
end


["布団/毛布","枕","シーツ/カバー","その他"].each do |name|
  singu.children.create(name: name)
end


["ごみ箱","ウェルカムボード","オルゴール","クッション","クッションカバー","スリッパラック","ティッシュボックス","バスケット/かご","フォトフレーム","マガジンラック","モビール","花瓶","灰皿","傘立て","小物入れ","置時計","掛時計/柱時計","鏡(立て掛け式)","鏡(壁掛け式)","置物","風鈴","植物/観葉植物","その他"].each do |name|
  interia.children.create(name: name)
end


["正月","成人式","バレンタインデー","ひな祭り","子どもの日","母の日","父の日","サマーギフト/お中元","夏/夏休み","ハロウィン","敬老の日","七五三","お歳暮","クリスマス","冬一般","その他"].each do |name|
  kisetu.children.create(name: name)
end

# 本・音楽・ゲーム
book,manga,zashi,cd,dvd,record,game = book_music_game.children.create([{name: "本"},{name: "漫画"},{name: "雑誌"},{name: "CD"},{name: "DVD/ブルーレイ"},{name: "レコード"},{name: "テレビゲーム"}])


["文学/小説","人文/社会","ノンフィクション/教養","地図/旅行ガイド","ビジネス/経済","健康/医学","コンピュータ/IT","趣味/スポーツ/実用","住まい/暮らし/子育て","アート/エンタメ","洋書","絵本","参考書","その他"].each do |name|
  book.children.create(name: name)
end

["全巻セット","少年漫画","少女漫画","青年漫画","女性漫画","同人誌","その他"].each do |name|
  manga.children.create(name: name)
end


["アート/エンタメ/ホビー","ファッション","ニュース/総合","趣味/スポーツ","その他"].each do |name|
  zashi.children.create(name: name)
end


["邦楽","洋楽","アニメ","クラシック","K-POP/アジア","キッズ/ファミリー","その他"].each do |name|
  cd.children.create(name: name)
end


["外国映画","日本映画","アニメ","TVドラマ","ミュージック","お笑い/バラエティ","スポーツ/フィットネス","キッズ/ファミリー","その他"].each do |name|
  dvd.children.create(name: name)
end


["邦楽","洋楽","その他"].each do |name|
  record.children.create(name: name)
end



["家庭用ゲーム本体","家庭用ゲームソフト","携帯用ゲーム本体","携帯用ゲームソフト","PCゲーム","その他"].each do |name|
  game.children.create(name: name)
end


# おもちゃ・ホビー・グッズ

omotya,tarent,comic,card,figure,gakki,core,miritary,bijutu,art,sonota = toy_hoby_goods.children.create([{name: "おもちゃ"},{name: "タレントグッズ"},{name: "コミック/アニメグッズ"},{name: "トレーディングカード"},{name: "フィギュア"},{name: "楽器/器材"},{name: "コレクション"},{name: "ミリタリー"},{name: "美術品"},{name: "アート用品"},{name: "その他"}])


["キャラクターグッズ","ぬいぐるみ","小物/アクセサリー","模型/プラモデル","ミニカー","トイラジコン","プラモデル","ホビーラジコン","鉄道模型","その他"].each do |name|

  omotya.children.create(name: name)
end

["アイドル","ミュージシャン","タレント/お笑い芸人","スポーツ選手","その他"].each do |name|
  tarent.children.create(name: name)
end


["ストラップ","キーホルダー","バッジ","カード","クリアファイル","ポスター","タオル","その他"].each do |name|
  comic.children.create(name: name)
end


["遊戯王","マジック：ザ・ギャザリング","ポケモンカードゲーム","デュエルマスターズ","バトルスピリッツ","プリパラ","アイカツ","カードファイト!! ヴァンガード","ヴァイスシュヴァルツ","プロ野球オーナーズリーグ","ベースボールヒーローズ","ドラゴンボール","スリーブ","その他"].each do |name|
  card.children.create(name: name)
end


["コミック/アニメ","特撮","ゲームキャラクター","SF/ファンタジー/ホラー","アメコミ","スポーツ","ミリタリー","その他"].each do |name|
  figure.children.create(name: name)
end


["エレキギター","アコースティックギター","ベース","エフェクター","アンプ","弦楽器","管楽器","鍵盤楽器","打楽器","和楽器","楽譜/スコア","レコーディング/PA機器","DJ機器","DTM/DAW","その他"].each do |name|
  gakki.children.create(name: name)
end


["武具","切手/官製はがき","貨幣/金貨/銀貨/記念硬貨","印刷物","ノベルティグッズ","その他"].each do |name|
  core.children.create(name: name)
end


["トイガン","個人装備","その他"].each do |name|
  miritary.children.create(name: name)
end

["陶芸","ガラス","漆芸","金属工芸","絵画/タペストリ","版画","彫刻/オブジェクト","書","写真","その他"].each do |name|
  bijutu.children.create(name: name)
end


["画材","額縁","その他"].each do |name|
  art.children.create(name: name)
end

["トランプ/UNO","カルタ/百人一首","ダーツ","ビリヤード","麻雀","パズル/ジグソーパズル","囲碁/将棋","オセロ/チェス","人生ゲーム","野球/サッカーゲーム","スポーツ","三輪車/乗り物","ヨーヨー","模型製作用品","鉄道","航空機","アマチュア無線","パチンコ/パチスロ","その他"].each do |name|
  sonota.children.create(name: name)
end


# コスメ・香水

base,make,nail,kousui,skin,hairca,bodyca,oral,rirag,diet,sonota = kosumebiyou.children.create([{name: "ベースメイク"},{name: "メイクアップ"},{name: "ネイルケア"},{name: "香水"},{name: "スキンケア/基礎化粧品"},{name: "ヘアケア"},{name: "ボディケア"},{name: "オーラルケア"},{name: "リラグゼーション"},{name: "ダイエット"},{name: "その他"}])


["ファンデーション","化粧下地","コントロールカラー","BBクリーム","CCクリーム","コンシーラー","フェイスパウダー","トライアルセット/サンプル","その他"].each do |name|
  base.children.create(name: name)
end


["アイシャドウ","口紅","リップグロス","リップライナー","チーク","フェイスカラー","マスカラ","アイライナー","つけまつげ","アイブロウペンシル","パウダーアイブロウ","眉マスカラ","トライアルセット/サンプル","メイク道具/化粧小物","美顔用品/美顔ローラー","その他"].each do |name|
  make.children.create(name: name)
end


["ネイルカラー","カラージェル","ネイルベースコート/トップコート","ネイルアート用品","ネイルパーツ","ネイルチップ/付け爪","手入れ用具","除光液","その他"].each do |name|
  nail.children.create(name: name)
end


["香水(女性用)","香水(男性用)","ユニセックス","ボディミスト","その他"].each do |name|
  kousui.children.create(name: name)
end

["化粧水/ローション","乳液/ミルク","美容液","フェイスクリーム","洗顔料","クレンジング/メイク落とし","パック/フェイスマスク","ジェル/ゲル","ブースター/導入液","アイケア","リップケア","トライアルセット/サンプル","洗顔グッズ","その他"].each do |name|
  skin.children.create(name: name)
end


["シャンプー","トリートメント","コンディショナー","リンス","スタイリング剤","カラーリング剤","ブラシ","その他"].each do |name|
  hairca.children.create(name: name)
end


["オイル/クリーム","ハンドクリーム","ローション","日焼け止め/サンオイル","ボディソープ","入浴剤","制汗/デオドラント","フットケア","その他"].each do |name|
  bodyca.children.create(name: name)
end


["口臭防止/エチケット用品","歯ブラシ","その他"].each do |name|
  oral.children.create(name: name)
end




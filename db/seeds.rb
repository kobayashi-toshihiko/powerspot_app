# 実行コマンド rails db:seed

Area.create(name: '北海道')
Area.create(name: '東北地方')
Area.create(name: '関東地方')
Area.create(name: '中部地方')
Area.create(name: '近畿地方')
Area.create(name: '中国地方')
Area.create(name: '四国地方')
Area.create(name: '九州地方')
Area.create(name: '沖縄')

prefecture_names = [
    {name: '北海道', area_id:1}, {name: '青森県', area_id:2}, {name: '岩手県', area_id:2}, 
    {name: '宮城県', area_id:2}, {name: '秋田県', area_id:2}, {name: '山形県', area_id:2}, 
    {name: '福島県', area_id:2}, {name: '茨城県', area_id:3}, {name: '栃木県', area_id:3}, 
    {name: '群馬県', area_id:3}, {name: '埼玉県', area_id:3}, {name: '千葉県', area_id:3}, 
    {name: '東京都', area_id:3}, {name: '神奈川県', area_id:3}, {name: '新潟県', area_id:4}, 
    {name: '富山県', area_id:4}, {name: '石川県', area_id:4}, {name: '福井県', area_id:4}, 
    {name: '山梨県', area_id:4}, {name: '長野県', area_id:4}, {name: '岐阜県', area_id:4}, 
    {name: '静岡県', area_id:4}, {name: '愛知県', area_id:4}, {name: '三重県', area_id:5}, 
    {name: '滋賀県', area_id:5}, {name: '京都府', area_id:5}, {name: '大阪府', area_id:5}, 
    {name: '兵庫県', area_id:5}, {name: '奈良県', area_id:5}, {name: '和歌山県', area_id:5}, 
    {name: '鳥取県', area_id:6}, {name: '島根県', area_id:6}, {name: '岡山県', area_id:6}, 
    {name: '広島県', area_id:6}, {name: '山口県', area_id:6}, {name: '徳島県', area_id:7}, 
    {name: '香川県', area_id:7}, {name: '愛媛県', area_id:7}, {name: '高知県', area_id:7}, 
    {name: '福岡県', area_id:8}, {name: '佐賀県', area_id:8}, {name: '長崎県', area_id:8}, 
    {name: '熊本県', area_id:8}, {name: '大分県', area_id:8}, {name: '宮崎県', area_id:8}, 
    {name: '鹿児島県', area_id:8}, {name: '沖縄県', area_id:9}, 
]

prefecture_names.each do |prefecture_name|
  Prefecture.find_or_create_by!(name: prefecture_name[:name], area_id: prefecture_name[:area_id])
end

Prefecture.create(name: '北海道', area_id: 1)


Element.create(name: '火属性', descript: 'test', kami: 'test', personal: 'test', match_attr: 'test', better_job: 'test')
CategoryBlessing.create(name: '金運')
PowerSpot.create(name: '摩周湖', address: 'test', main_title: '【摩周湖】晴れてたら幸運！霧に覆われているパワースポット裏摩周【神池】', sub_title: 'sub_title', main_descript: '摩周湖自体もパワースポットとして有名ですが、今回は裏摩周について紹介していきたいと思います。摩周湖は、湧き出る伏流水が多いことから、北海道の厳しい冬でも凍ることなく、青く透明度の高い湖を臨むことができます。', blessing_descript: 'blessingtest', access_info: 'accesstest', image1: File.open(Rails.root.join('test', 'fixtures', 'files', 'LakeMashu1.jpg')), element_id: 1, category_blessing_id: 1, prefecture_id: 1, user_id: 1)

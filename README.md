# Study-Review
# 概要
ポートフォリオとして制作した自作WEBアプリケーションです  
単語カードを参考にブログ形式で学べる勉強アプリを作成しました。  
学んだ内容を投稿し、効率良く復習する為のアプリケーションです。  
機能としてはシンプルですが、実際に使用していく中でアップデートを行っております。  
TECH:EXPERTで学んだ内容をベースに作成しております。  
AWS EC2で自動デプロイまで行えるようにしております。  

# URL
http://3.23.171.242/

# テスト用アカウント
(ニックネーム)    '太郎'  
(メールアドレス)  'taro@sample.co.jp'  
(パスワ-ド)      'taro00'  

# 動作確認方法
Chromeの最新版を利用してアクセスしてください。  
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続ください。  
URLおよびログイン情報については、上記の通りです。  
同時に複数の方がログインしている場合に、ログインできない可能性がございます。  

# 制作背景
５月からTECH:EXPERTでプログラミングの勉強を始めました。  
知識を定着させる為に復習が重要だと考えております。  
しかし、学ぶべき情報が多い為、復習に費やす時間の使い方に悩みました。  
復習ではカリキュラム内容やメモの見直しを行っておりました。  
復習内容を振り返ると同じ単語を何度も検索していることが分かりました。  
復習に費やす時間の効率化を考えた時、何回も検索する単語（覚えていない又は苦手な項目）を優先して復習することが重要だと考えました。  
この課題を解決する為に、アプリケーションを作成致しました。  
解決に向けてアプリに検索機能、お気に入り機能、PV数を計測する機能を導入しました。  
検索機能で投稿した単語を効率良く探します。  
お気に入り機能で重要な項目のリストを作成出来るようにします。  
PV数を計測する機能で何回調べたかを可視化出来るようにします。  
随時修正を行い、より使い易く効率的なアプリケーションを目指しております。  

# 使用技術
* Visual Studio Code  
* HTML  
* CSS  
* Javascript   
* Ruby 2.5.1  
* Ruby on Rails 5.2.3 (RSpecによるテスト等も含む)  
* MySQL  
* Linux  
* Nginx  
* Git / GitHub   
* Capistrano  
* AWS  
* EC2  

# 機能一覧
* ユーザー登録・ログイン機能  
* 投稿機能  
* 投稿一覧・投稿詳細表示機能  
* 投稿編集機能  
* ページネーション機能（gem: Kaminari）  
* お気に入り機能（非同期処理）  
* コメント機能  
* レコードのPV数を計測（gem: Impressionistを使用）  
* 検索機能（gem: Ransackを使用）  
* Rspec（テスト機能）  
* 自動デプロイ  
* モデルに対するバリデーション(文字数・メールアドレス・パスワードなど)  

# 今後実装したい機能
* コメント機能の非同期化  
* ページネーション機能を活用しての無限スクロール機能  
* 投稿期間、PV数でのソート機能  
* タグ付けを行い、フォルダ管理  

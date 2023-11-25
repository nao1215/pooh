## [WIP] pooh - scraping cli tool for money
## 何故poohを作るのか
お金のためです。
  
poohは、2024年に開発予定のCLIツールであり、私が収益を得るために開発する初めてのOSSです。2024年は、pooh、CSVバリデーションライブラリ開発、既存ツールの保守／機能拡張のみを行います。つまり、2022〜2023年のように多数のCLIやライブラリを開発した生活とは決別します。
  
私は、ソフトウェアは自由であるべきと考える人間です。しかし、心境の変化が訪れ、収益を稼ぐためであれば不自由なソフトウェアを受け入れることにしました。その理由は以下の2つです。
- 家のローンが始まること
- 開発したOSSからリターンが得られず、燃えつきることを懸念
  
私は家庭を持ち、少しだけ大人になったようです。20代の頃のように、自分の好きなことだけをするだけで生きていけなくなりました。家族を養う義務が生まれたのです。小さな息子により良い生活を提供するために努力し、結果を出す（お金を稼ぐ）必要が出てきました。また、子供がもう一人欲しいという気持ちがあり、子供を有無には金銭的な余裕が必要です。また、生物学上のタイムリミットが迫っているため、poohの開発に専念する必要が出てきました（私は、子供は35〜36歳までに産めなければ諦める予定です）
  
配偶者の稼ぎを期待する線もありますが、私は自身の力でコントロールできる案が好みです。そのため、poohで稼ぎます。
  
## お金を稼ぐために、何故pooh（個人的な開発）を選んだのか
前提として、私の年収は子供一人世帯の最低年収（平均）であり、不足している金額は年収ベースで100〜200万円と考えています。
  
私は、お金を稼ぐために、以下の4つの選択肢があると考えました。
1. エンジニアとして価値を高める（現職の給与を上げる）
2. 給料の良いところへ転職
3. 副業
4. 自分でサービスを作る（== poohを作る）
  
エンジニアとして価値を高めることは、筋は良いですが、選択しませんでした。子供がいる状態では、勉強時間を安定確保できません。子供の寝付きが悪かっただけで、勉強時間が削れます。また、会社から常にハードな仕事を貰えるわけではないので、勉強した内容を発揮して会社に貢献する機会を得られない可能性もあります。
  
給料の良いところへ転職することは、真っ先に考えました。しかし、私は現職を転職する理由が給与以外に無いことを感じています。不満が特にありません。現職を完璧な会社とは思っていませんが、物事を改善する力に溢れる若い会社だと感じています。まだ、現職の進む先を見てみたい気持ちがあります。更に付け加えると、私は専門性の高いスキルを有しておらず、給与を上げた転職は難しいとも考えています。
  
副業は、稼ぐという手段では、最も優れています。高い時間給が得られます。しかし、副業を行うことは、週15〜20時間の残業をすることを意味します。子育て世帯が安定して残業することは厳しく、疲労のため高い生産性を提供できない可能性も否定できません。また、長時間労働は身体を壊すリスクがあります。私は20代の頃の長時間労働が原因で、あまり無茶が出来ない状態になっています。更に悪化させるのは避けたいです。
  
自分でサービスを作る方法は、ハッキリ言えば博打です。当たればスケールします（しかも時間給ではありません）。外れれば収益はありません。しかし、私は自分でサービスを作ることを選択しました。自作したサービスは転職時のポートフォリオにもなりますし、この経験を技術書展やBOOTHで販売して小銭を稼ぐことを考えています。何より、この方法が私の生活と性格に最も適しており、モチベーションを高く維持できるからです。私はコーディングに疲れを感じませんし、誰にも縛られずにソフトを書く時に高いパフォーマンスを発揮します。
  
## poohをどのような方針で開発するのか
設計は未実施ですが、無料版と有料版を提供するスクレイピングツール（Command Line Tool）とする予定です。  
- 無料版であっても収益が発生する設計
  - 例：マイニング実施や広告表示
- 有料版は無料版のevilな機能を無効化するか、有料版のみの機能を提供
  
無料版でも確実な収益を得るために、稼働時間が長いスクレイピングツールを選択しています。また、基本的にはオープンソースとして開発します。しかし、収益性を高めるために一部クローズド開発を導入するか、デュアルライセンスを採用する可能性もあります。
  
また、初期段階ではAPI化やGUI提供を行いません。私は、CLIツールの開発に慣れているため、CLIツールの開発に集中します。API化やGUI提供は、基本機能の開発が完了してから検討します。また、消極的な理由として、私はGUI開発が下手なことも挙げられます。
  
## [WIP] pooh architecture
[設計](./doc/ja/design.md)
  
## pooh（名前）の由来
「くまのプーさん（Winnie the pooh）」から借用しています。複数の理由があります。
  
- 幼少期から、私が好きなキャラクターであること
  - 息子にもプーの人形を渡すぐらい好き
- 熊は、蜂がセッセと集めたハチミツを食べます。スクレイピングで集めた情報（ハチミツ）をユーザーが美味しく食べるイメージです。
  - サブコマンドや関連機能は、`bee`と名付けるかもしれません。
- `pooh`という名称で二面性が表現できること
  - 可愛いキャラクターのプーさん <-> 現実世界では恐ろしい動物である熊
  - ディズニー版のプーさん <-> ロシア版のプーさん
  
二面性を表現したい理由は、以下の通りです。
  - 「無料版 <-> 有料版」が存在すること
  - 「自由を信条とした過去の自分 <-> 家族のために信条を変えた現在の自分」が存在すること。どちらも私の一面です。

## LICENSE
GNU Affero General Public License v3 and MIT (contributions) with exception License Zero Patron 1.0.0.
# Sample-Superstore-Analysis
### 概要
[本リンク](https://career-5.com/download/%E3%82%B5%E3%83%B3%E3%83%97%E3%83%AB-%E3%82%B9%E3%83%BC%E3%83%91%E3%83%BC%E3%82%B9%E3%83%88%E3%82%A2/)よりDLできるxlsファイル内データを、BigQueryとLooker Studioを用いて集計・可視化する際に用いたソースコードを記載しています。

### 前処理方法
BigQueryではカラム名を日本語にすると表示がおかしくなるため、CSVとして取り込む前に、行ID列を削除の上各カラム名を以下のように変更しています。
#### 注文テーブル → orders
|||||||||||||||||||||
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
|日本語カラム名|オーダー ID|オーダー日|出荷日|出荷モード|顧客 ID|顧客名|顧客区分|市区町村|都道府県|国/領域|地域|製品 ID|カテゴリ|サブカテゴリ|製品名|売上|数量|割引率|利益|
|英語カラム名|order_id|order_date|ship_date|ship_mode|customer_id|customer_name|customer_classification|city|prefecture|counrty|region|product_id|product_category|product_subcategory|product_name|sales|quantity|discount_rate|profit|
#### 返品テーブル → return
||||
|---|---|---|
|日本語カラム名|オーダー ID|返品|
|英語カラム名|order_id|returned|
#### 関係者テーブル → region_managers
||||
|---|---|---|
|日本語カラム名|地域|地域マネージャー|
|英語カラム名|region|region_manager|

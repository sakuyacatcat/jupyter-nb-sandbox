# 手書き文字認識

[競技ページ](https://user.competition.signate.jp/ja/competition/detail/?competition=d10dda94a8d546ae949c64f5e980a5af)

提供されているデータセットは以下の通りです。

- train.zip: 訓練データのファイルが含まれています。
- test.zip: テストデータのファイルが含まれています。
- train_master.csv: 訓練データの画像ファイル名と対応するラベルが記載された CSV ファイル
- sample_submit.csv: 提出用のサンプルファイル
- submission.csv: 作成した提出用のファイル
- 提出方法: 提出ファイルは、test.zip の file_name に対応する予測ラベルを category_id 列に記載した CSV ファイルとします。提出ファイルの形式は sample_submit.csv と同様です。

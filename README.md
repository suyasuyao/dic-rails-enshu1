# README

DICの演習１

以下を満たすアプリケーションを作成する
1. お問い合わせ機能のコントローラ(contacts controller）を作成する
2. アクションはnewとcreateのみとする
3. newアクションでフォームを作成し、createで保存する、保存したらnewアクションにredirectする
4. routingはresoucesメソッドで作成する
5. Viewの作成方法は、フォルダ右クリックからnewファイルするか、Controllerを作成する際にオプションで作成する
6. フォームはform_withメソッドで作成する
7. contactsテーブルのカラムは、nameとemailとcontentとする
8. contentカラムでは、1文字以上140文字以下しか保存できないようにする
9. contentカラムで140文字より多い文字数、または内容が空で登録した場合、エラーメッセージがでるようにする

# docker
## 利用方法
```
# 初回のみ
 docker-compose build --no-cache
 docker-compose run web bin/rake db:create 
# マイグレーションやデータ投入を行う際に 
 docker-compose run web bin/rake db:migrate db:seed
# アプリケーション起動時毎回実施
 docker-compose up
```


## 問題点
- postgres:12-alpineは起動したがpsqlで接続できないため、postgres:11-alpineを利用


# dx-kjs-processing

## 概要
Key-Jack Simulator用データ加工システムのソースコードのバージョン管理用リポジトリ

本プロジェクトでは、ソースコード内の各環境名（'dev', 'prod'）をプレースホルダ（${PROJECT_ID}）にて記載し管理している。

デプロイ時にはプレースホルダ'${PROJECT_ID}'を実行したい環境名（'dev', 'prd'）に置換する作業が必要となる。

## フォルダ構成

| 階層 | ディレクトリ情報 | 備考 |
|:-----------|:-----------|:-----------|
| 1階層 | dx-kjs-processing | README.mdやその他プロジェクト関連ファイルを格納 |
| 2階層 | サービス名フォルダ（例：Cloud Run function, sql） | サービス名ごとにフォルダを作成。（例：Cloud Run function, sql）環境名が${PROJECT_ID}となる、オリジナルファイルを格納 |
| 3階層 | deployed | デプロイしたソースコード履歴を管理 |
| 4階層 | dev,prod | dev(開発)、prd（本番）にて、環境ごとにフォルダを分割 |
| 5階層 | 日付フォルダ | リリース日付をフォルダ名としフォルダを作成し、ソースコードのバージョンを管理。一日に複数回リリースを行う場合は、フォルダ名称を日時にて作成 |

### 新規リリース時のバージョン管理

新規リリースを行った場合、各環境フォルダ配下にリリース日時のフォルダを作成し格納する。

## デプロイ時の設定変更

### PROJECT_IDの一括置換

プレースホルダ'${PROJECT_ID}'を、各環境名（'dev', 'prd'）に一括置換する。
参考に、下記に置換手順の一例を示す。

### 手順

1.マスタからデプロイ対象のファイルをローカルリポジトリにクローンする。

　　　　*set_project_idも同じローカルリポジトリにクローンする。


2.ローカルリポジトリにてPowerShellを起動し、下記PowerShellコマンドを実行する。

    .\set_project_id.ps1 -Environment "" -TargetFolder ""
    
　　　　*Environment ""　にはdevかprdを入力する（例：-Environment "dev"）

　　　　*TargetFolder ""　にはローカルリポジトリのパスを入力する（例：-TargetFolder "C:\Users\Desktop"）

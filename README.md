# vr-dx-kjs

## 概要
Key-Jack Simulator用データ加工システムのソースコードのバージョン管理用リポジトリ

本プロジェクトでは、ソースコード内の各環境名（'dev', 'prod'）をプレースホルダ'${PROJECT_ID}'にて記載し管理している。

デプロイ時にはプレースホルダ'${PROJECT_ID}'を実行したい環境名（'dev', 'prod'）に置換する作業が必要となる。


## デプロイ時の設定変更

### PROJECT_IDの変更

プレースホルダ'${PROJECT_ID}'を、各環境名（'dev', 'prod'）に一括置換する。

### 手順

1.マスタをローカルリポジトリにクローンする。

　　　　*set_project_idも同じローカルリポジトリにクローンする。


2.ローカルリポジトリにてPowerShellを起動し、下記PowerShellコマンドを実行する。

    .\set_project_id.ps1 -Environment "" -TargetFolder ""
    
　　　　*Environment ""　にはdevかprodを入力する（例：-Environment "dev"）

　　　　*TargetFolder ""　にはローカルリポジトリのパスを入力する（例：-TargetFolder "C:\Users\Desktop"）

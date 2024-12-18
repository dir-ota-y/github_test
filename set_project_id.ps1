
#環境引数を確認
param(
    [string]$Environment,
    [string]$TargetFolder
)

#引数が指定されていない場合のエラーメッセージ
if (-not $Environment -or ($Environment -ne "dev" -and $Environment -ne "prod")) {
    Write-Host "エラー:環境（dev または prod）を指定してください。"
    exit 1
}

if (-not (Test-Path -Path $TargetFolder)) {
    Write-Host "エラー:フォルダパスが存在しません"
    exit 1
}

# プロジェクトIDの設定
$replacement = if ($Environment -eq "dev") {"dev"} else {"prod"}

# 出力フォルダの作成
$outputFolder = Join-Path $TargetFolder "output"
if (!(Test-Path -Path $outputFolder)){
    New-Item -ItemType Directory -Path $outputFolder
}

#フォルダ内のすべてのSQLファイルを取得
$sqlFiles = Get-ChildItem -Path $TargetFolder | Where-Object {$_.Extension -eq ".sql" -or $_.Extension -eq ".py"}

#各ファイル内の${PROJECT_ID}を置換して別名で保存
foreach ($file in $sqlFiles) {
    #ファイルの内容を読み込む
    $content = Get-Content -Path $file.FullName -Raw

    #指定の文字列に置換
    $updatedContent = $content -replace '\$\{PROJECT_ID\}', $replacement

    #元の拡張子を取得
    $fileExtension = $file.Extension

    #新しいファイル名を作成
    $newFileName = [System.IO.Path]::GetFileNameWithoutExtension($file.FullName) + "_$Environment$fileExtension"
    $newFilePath = Join-Path $outputFolder $newFileName

    #新しいファイルとして保存
    Set-Content -Path $newFilePath -Value $updatedContent
}

Write-Host "すべてのファイルを$replacementに置換し、'$outputFolder'に保存しました。"
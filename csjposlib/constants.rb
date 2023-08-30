# -*- coding: utf-8 -*-
# vim:fileencoding=utf-8

module CSJPOSLib
  # constants
  ## 処理結果
  CMP_SUCCESS = 0 # 正常終了
  CMP_E_CONNECTED = 1001 # 接続済み
  CMP_E_DISCONNECT = 1002 # 未接続
  CMP_E_NOTCONNECT = 1003 # 接続失敗
  CMP_E_CONNECT_NOTFOUND = 1004 # 未対応機種
  CMP_E_CONNECT_OFFLINE = 1005 # プリンター状態異常
  CMP_E_ILLEGAL = 1101 # 未対応処理または無効パラメータ
  CMP_E_OFFLINE = 1102 # オフライン
  CMP_E_NOEXIST = 1103 # ファイルが存在しない
  CMP_E_FAILURE = 1104 # 処理異常
  CMP_E_TIMEOUT = 1105 # 書き込みタイムアウト
  CMP_EPTR_COVER_OPEN = 1201 # プリンターのカバーオープン
  CMP_EPTR_REC_EMPTY = 1202 # 用紙切れ
  CMP_EPTR_BADFORMAT = 1203 # 画像フォーマット異常
  CMP_EPTR_CMP_EPTR_TOOBIG = 1204 # 画像サイズが大きすぎる
  ## 接続インターフェース
  CMP_PORT_WiFi = 0 # ネットワーク接続
  CMP_PORT_USB = 3 # USB 接続
  CMP_PORT_SNMP = 6 # SNMP 接続
  ## ステータス
  CMP_STS_NORMAL = 0 # ステータス正常
  CMP_STS_DRAWER_LEVEL_H = 2 # ドロワーキックコネクタ３番ピン状態 H
  CMP_STS_PAPER_NEAREMPTY = 4 # ニアエンプティ
  CMP_STS_COVER_OPEN = 16 # カバーオープン
  CMP_STS_PAPER_EMPTY = 32 # 用紙切れ
  CMP_STS_PRINTEROFF = 128 # オフライン
  ## 配置
  CMP_ALIGNMENT_LEFT = 0 # 左揃え
  CMP_ALIGNMENT_CENTER = 1 # 中揃え
  CMP_ALIGNMENT_RIGHT = 2 # 右揃え
  ## 文字属性
  CMP_FNT_DEFAULT = 0 # 標準フォント
  CMP_FNT_FONTB = 1 # フォント B
  CMP_FNT_FONTC = 2 # フォント C
  CMP_FNT_BOLD = 8 # 太字
  CMP_FNT_REVERSE = 64 # 反転
  CMP_FNT_UNDERLINE = 128 # 下線
  ## 文字サイズ
  CMP_TXT_1WIDTH = 0 # 幅 1 倍
  CMP_TXT_2WIDTH = 16 # 幅 2 倍
  CMP_TXT_3WIDTH = 32 # 幅 3 倍
  CMP_TXT_4WIDTH = 48 # 幅 4 倍
  CMP_TXT_5WIDTH = 64 # 幅 5 倍
  CMP_TXT_6WIDTH = 80 # 幅 6 倍
  CMP_TXT_7WIDTH = 96 # 幅 7 倍
  CMP_TXT_8WIDTH = 112 # 幅 8 倍
  CMP_TXT_1HEIGHT = 0 # 高さ 1 倍
  CMP_TXT_2HEIGHT = 1 # 高さ 2 倍
  CMP_TXT_3HEIGHT = 2 # 高さ 3 倍
  CMP_TXT_4HEIGHT = 3 # 高さ 4 倍
  CMP_TXT_5HEIGHT = 4 # 高さ 5 倍
  CMP_TXT_6HEIGHT = 5 # 高さ 6 倍
  CMP_TXT_7HEIGHT = 6 # 高さ 7 倍
  CMP_TXT_8HEIGHT = 7 # 高さ 8 倍
  ## サイド
  CMP_SIDE_RIGHT = 0 # 右側
  CMP_SIDE_LEFT = 1 # 左側
  ## 画像幅
  CMP_BM_ASIS = -11 # 1 ドット当たり 1 ピクセル
  ## バーコード種類
  CMP_BCS_UPCA = 101 # UPC-A
  CMP_BCS_UPCE = 102 # UPC-E
  CMP_BCS_EAN8 = 103 # EAN8
  CMP_BCS_EAN13 = 104 # EAN13
  CMP_BCS_JAN8 = 105 # JAN8
  CMP_BCS_JAN13 = 106 # JAN13
  CMP_BCS_ITF = 107 # Interleaved 2 of 5
  CMP_BCS_Codabar = 108 # Codabar
  CMP_BCS_Code39 = 109 # Code39
  CMP_BCS_Code93 = 110 # Code93
  CMP_BCS_Code128 = 111 # Code128
  CMP_BCS_GS1DATABAR = 131 # GS1 DataBar Omnidirectional
  CMP_BCS_GS1DATABAR_E = 132 # GS1 DataBar Expanded
  CMP_BCS_GS1DATABAR_S = 133 # GS1 DataBar Stacked
  CMP_BCS_GS1DATABAR_E_S = 134 # GS1 DataBar Expanded Stacked
  ## 可視コード
  CMP_HRI_TEXT_NONE = 0 # なし
  CMP_HRI_TEXT_ABOVE = 1 # バーコードの上
  CMP_HRI_TEXT_BELOW = 2 # バーコードの下
  ## エラー修正レベル(PDF417)
  CMP_PDF417_EC_LEVEL_0 = 48 # レベル 0
  CMP_PDF417_EC_LEVEL_1 = 49 # レベル 1
  CMP_PDF417_EC_LEVEL_2 = 50 # レベル 2
  CMP_PDF417_EC_LEVEL_3 = 51 # レベル 3
  CMP_PDF417_EC_LEVEL_4 = 52 # レベル 4
  CMP_PDF417_EC_LEVEL_5 = 53 # レベル 5
  CMP_PDF417_EC_LEVEL_6 = 54 # レベル 6
  CMP_PDF417_EC_LEVEL_7 = 55 # レベル 7
  CMP_PDF417_EC_LEVEL_8 = 56 # レベル 8
  ## エラー修正レベル(QR)
  CMP_QRCODE_EC_LEVEL_L = 48 # レベル L(7%)
  CMP_QRCODE_EC_LEVEL_M = 49 # レベル M(15%)
  CMP_QRCODE_EC_LEVEL_Q = 50 # レベル Q(25%)
  CMP_QRCODE_EC_LEVEL_H = 51 # レベル H(30%)
  ## カット種類
  CMP_CUT_FULL = -1 # フルカット
  CMP_CUT_PARTIAL = -2 # パーシャルカット
  CMP_CUT_FULL_PREFEED = -3 # カット位置送り後フルカット
  CMP_CUT_PARTIAL_PREFEED = -4 # カット位置送り後パーシャルカット
  ## マークフィード種類
  CMP_MF_TO_CUTTER = 2 # フィードしてカット
  CMP_MF_TO_NEXT_TOF = 8 # 次の用紙までフィード
  ## ドロワー番号
  CMP_DRAWER_1 = 1 # ドロワー1
  CMP_DRAWER_2 = 2 # ドロワー2
  ## 一括処理コントロール
  CMP_TP_TRANSACTION = 11 # 一括処理の開始
  CMP_TP_NORMAL = 12 # 一括処理の印刷
  ## 回転方向コントロール
  CMP_RT_NORMAL = 0x0001 # 回転印刷の終了
  CMP_RT_ROTATE180 = 0x0103 # 倒立印刷の開始
  CMP_RP_BARCODE = 0x1000 # バーコード回転の開始
  CMP_RP_BITMAP = 0x2000 # 画像回転の開始
  ## ページモードコントロール
  CMP_PM_PAGE_MODE = 1 # ページモードの開始
  CMP_PM_PRINT_SAVE = 2 # 印刷とデータ保持
  CMP_PM_NORMAL = 3 # 印刷とページモード終了
  CMP_PM_CANCEL = 4 # ページモードキャンセル
  ## ページモード印刷方向
  CMP_PD_LEFT_TO_RIGHT = 1 # 通常印刷方向
  CMP_PD_BOTTOM_TO_TOP = 2 # 左 90 度回転印刷
  CMP_PD_RIGHT_TO_LEFT = 3 # 180 度回転印刷
  CMP_PD_TOP_TO_BOTTOM = 4 # 右 90 度回転印刷
end

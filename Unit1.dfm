object Form1: TForm1
  Left = 192
  Top = 124
  Width = 332
  Height = 383
  Align = alCustom
  Caption = 'Form1'
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object FileListBox1: TFileListBox
    Left = 8
    Top = 184
    Width = 145
    Height = 97
    ItemHeight = 13
    TabOrder = 0
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 8
    Top = 80
    Width = 145
    Height = 97
    FileList = FileListBox1
    ItemHeight = 16
    TabOrder = 1
  end
  object DriveComboBox1: TDriveComboBox
    Left = 8
    Top = 56
    Width = 145
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 2
  end
  object FilterComboBox1: TFilterComboBox
    Left = 8
    Top = 288
    Width = 145
    Height = 21
    FileList = FileListBox1
    TabOrder = 3
  end
  object FileListBox2: TFileListBox
    Left = 160
    Top = 184
    Width = 145
    Height = 97
    ItemHeight = 13
    TabOrder = 4
  end
  object DirectoryListBox2: TDirectoryListBox
    Left = 160
    Top = 80
    Width = 145
    Height = 97
    FileList = FileListBox2
    ItemHeight = 16
    TabOrder = 5
  end
  object DriveComboBox2: TDriveComboBox
    Left = 160
    Top = 56
    Width = 145
    Height = 19
    DirList = DirectoryListBox2
    TabOrder = 6
  end
  object FilterComboBox2: TFilterComboBox
    Left = 160
    Top = 288
    Width = 145
    Height = 21
    FileList = FileListBox2
    TabOrder = 7
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 8
    Width = 297
    Height = 49
    AutoSize = False
    Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1087#1088#1080' '#1087#1086#1084#1086#1097#1080' '#1087#1086#1090#1086#1082#1072'. '#1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1095#1072#1089#1090#1103#1084
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object Button1: TButton
    Left = 8
    Top = 312
    Width = 145
    Height = 25
    Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 9
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 312
    Width = 145
    Height = 25
    Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1095#1072#1089#1090#1103#1084
    TabOrder = 10
    OnClick = Button2Click
  end
end

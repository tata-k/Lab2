unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl;

type
  TForm1 = class(TForm)
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    FileListBox2: TFileListBox;
    DirectoryListBox2: TDirectoryListBox;
    DriveComboBox2: TDriveComboBox;
    FilterComboBox2: TFilterComboBox;
    StaticText1: TStaticText;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject); //Копируем через поток
var S,D:TFileStream;
begin
  S:=TFileStream.Create(PChar(FileListBox1.FileName),fmOpenRead);
  D:=TFileStream.Create(PChar(FileListBox2.FileName),fmOpenWrite OR fmCreate);
  D.CopyFrom(S,S.Size);
  D.Free;
  S.Free;
  showmessage('Копирование прошло успешно');
end;

procedure TForm1.Button2Click(Sender: TObject); //Копируем по частям через поток
var s,d:TFileStream;
a:integer;
begin
  s:=TFileStream.Create(PChar(FileListBox1.FileName),fmOpenRead);
  d:=TFileStream.Create(PChar(FileListBox2.FileName),fmOpenWrite or fmCreate);
   for a:=1 to s.Size do   //Вместо s.size можно вставить любое число(кол-во копируемых символов)
   begin
     d.CopyFrom(s,1);
     end;
  showmessage('Копирование по частям прошло успешно');
  d.Free;
  s.Free;
end;

end.

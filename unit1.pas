unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, ActnList, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Counter: TLabel;
    rockPic: TImage;
    paperPic: TImage;
    sPic: TImage;
    Panel3: TPanel;
    scissors: TBitBtn;
    rock: TBitBtn;
    paper: TBitBtn;
    Button4: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    playerStep: TImage;
    enemyStep: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure paperClick(Sender: TObject);
    procedure paperPicClick(Sender: TObject);
    procedure playerStepClick(Sender: TObject);
    procedure rockClick(Sender: TObject);
    procedure scissorsClick(Sender: TObject);
    procedure enemy();
  private

  public

  end;

var
  Form1: TForm1;
  r, score_player, score_enemy, player: integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.enemy();
begin
  Randomize;
  r := random(3)+1;
  Counter.caption:='CPU: '+IntToStr(score_enemy)+#13+'Player: '+IntToStr(score_player);
  If r = 1 then
  begin
    enemyStep.Picture:=rockPic.Picture;
    If (player=3) then
    begin
       score_enemy:=score_enemy+1;
       Counter.caption:='CPU: '+IntToStr(score_enemy)+#13+'Player: '+IntToStr(score_player);
       panel1.color:=$8888e8;
       panel2.color:=$ace7a7;
    end;
    If (player=2) then
    begin
       score_player:=score_player+1;
       Counter.caption:='CPU: '+IntToStr(score_enemy)+#13+'Player: '+IntToStr(score_player);
       panel1.color:=$ace7a7;
       panel2.color:=$8888e8;
    end;
    If (player=1) then
    begin
      panel1.color:=cl3DLight;
      panel2.color:=cl3DLight;
    end;
  end;
  If (r = 2) then
  begin
    enemyStep.Picture:=paperPic.Picture;
    If (player=1) then
    begin
       score_enemy:=score_enemy+1;
       panel1.color:=$8888e8;
       panel2.color:=$ace7a7;
       Counter.caption:='CPU: '+IntToStr(score_enemy)+#13+'Player: '+IntToStr(score_player);
  end;
    If (player=3) then
    begin
      panel1.color:=$ace7a7;
       panel2.color:=$8888e8;
       score_player:=score_player+1;
       Counter.caption:='CPU: '+IntToStr(score_enemy)+#13+'Player: '+IntToStr(score_player);
  end;
     If (player=2) then
    begin
      panel1.color:=cl3DLight;
      panel2.color:=cl3DLight;
    end;
  end;
  If (r = 3) then
  begin
    enemyStep.Picture:=sPic.Picture;
    If (player=2) then
    begin
      panel1.color:=$8888e8;
       panel2.color:=$ace7a7;
       score_enemy:=score_enemy+1;
       Counter.caption:='CPU: '+IntToStr(score_enemy)+#13+'Player: '+IntToStr(score_player);
  end;
    If (player=1) then
    begin
      panel1.color:=$ace7a7;
       panel2.color:=$8888e8;
       score_player:=score_player+1;
       Counter.caption:='CPU: '+IntToStr(score_enemy)+#13+'Player: '+IntToStr(score_player);
  end;
    If (player=3) then
    begin
      panel1.color:=cl3DLight;
      panel2.color:=cl3DLight;
    end;
  end;



end;

procedure TForm1.playerStepClick(Sender: TObject);
begin

end;

procedure TForm1.rockClick(Sender: TObject);
begin
  player:=1;
   playerStep.Picture:=rockPic.Picture;
   enemy();
end;

procedure TForm1.scissorsClick(Sender: TObject);
begin
  player:=3;
  playerStep.Picture:=sPic.Picture;
  enemy();
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  score_player:=0;
  score_enemy:=0;
  r:=0;
end;

procedure TForm1.paperClick(Sender: TObject);
begin
  player:=2;
  playerStep.Picture:=paperPic.Picture;
  enemy();
end;

procedure TForm1.paperPicClick(Sender: TObject);
begin

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  score_enemy:=0;
  score_player:=0;
  Counter.caption:='CPU: '+IntToStr(score_enemy)+#13+'Player: '+IntToStr(score_player);
  panel1.color:=cl3DLight;
      panel2.color:=cl3DLight;
      playerStep.Picture.Clear;
      enemyStep.Picture.Clear;
end;

end.


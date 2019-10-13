unit controller.injetaJS;
    { Public declarations }
interface

uses System.SysUtils, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Classes;

type TcontrollerInjetaJS = class(TComponent)
    private

    public
      autenticado : boolean;
      procedure injetaJS();
      procedure sendMessageTxt(Sender: TObject;  contact: string; message: string);
end;


implementation

{ TcontrollerInjetaJS }

uses u_principal;

procedure TcontrollerInjetaJS.injetaJS();
var
  arq: TextFile;
  linha, JS: string;
  array_js: array [0..0] of string;

begin
  if autenticado = true then
  begin
    AssignFile(arq, ExtractFilePath(Application.ExeName)+ 'js.abr');
    {$I-}         // desativa a diretiva de Input
      Reset(arq);   // Abre o arquivo texto para leitura
    {$I+}         // ativa a diretiva de Input

    if (IOResult <> 0) then
    begin
      showmessage('Erro na abertura do arquivo.');
    end else
      begin
        // verifica se o ponteiro de arquivo atingiu a marca de final de arquivo
        while (not eof(arq)) do
        begin
          readln(arq, linha); //Lê linha do arquivo
          array_js[0] := linha + array_js[0];
        end;
        CloseFile(arq); //Fecha o arquivo texto aberto
      end;

       //injeta o JS principal
       JS :=  array_js[0];
       frm_principal.Chromium1.Browser.MainFrame.ExecuteJavaScript(JS, 'about:blank', 0);

       //verifica se está logado
       JS := 'WAPI.isLoggedIn()';
       frm_principal.Chromium1.Browser.MainFrame.ExecuteJavaScript(JS, 'about:blank', 0);
       frm_principal.timer2.Enabled := false;
       array_js[0] := '';
  end;
end;

procedure TcontrollerInjetaJS.sendMessageTxt(Sender: TObject; contact,
  message: string);
begin
//
end;

end.

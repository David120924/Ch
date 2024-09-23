codeunit 71146586 SqzCLValidateRUT
{
    procedure CalcularDigitoVerificador(RUT: Text[12]): Text
    var
        Suma: Integer;
        Factor: Integer;
        Digito: Integer;
        DV: Integer;
        Numero: Integer;
    begin
        Suma := 0;
        Factor := 2;

        for Digito := StrLen(RUT) downto 1 do begin
            if Evaluate(Numero, CopyStr(RUT, Digito, 1)) then
                Suma += Numero * Factor;
            Factor += 1;
            if Factor > 7 then
                Factor := 2;
        end;

        DV := 11 - (Suma mod 11);
        if DV = 11 then
            exit('0')
        else if DV = 10 then
            exit('K')
        else
            exit(Format(DV));
    end;

    procedure ValidarEInsertarRUT(RUT: Text[12]): Text[12]
    var
        RUTCompleto: Text[12];
        DV: Text;
        EsValido: Boolean;
    begin
        DV := CalcularDigitoVerificador(RUT);
        RUTCompleto := RUT + '-' + DV;

        EsValido := ValidarRUT(RUTCompleto);

        if EsValido then
            RUTCompleto := RUTCompleto
        else
            RUTCompleto := '';
            exit(RUTCompleto);
    end;

    procedure ValidarRUT(RUTCompleto: Text[12]): Boolean
    var
        RUT: Text[12];
        DV: Char;
        RutAux: Integer;
        S: Integer;
        M: Integer;
        CharDV: Char;
    begin
        RUTCompleto := UpperCase(RUTCompleto);
        RUTCompleto := DelChr(RUTCompleto, '=', '.'); // Elimina puntos
        RUTCompleto := DelChr(RUTCompleto, '=', '-'); // Elimina guiones

        RUT := CopyStr(RUTCompleto, 1, StrLen(RUTCompleto) - 1);
        if not Evaluate(RutAux, RUT) then
            exit(false);

        DV := RUTCompleto[StrLen(RUTCompleto)];

        S := 1;
        M := 0;
        while RutAux <> 0 do begin
            S := (S + (RutAux mod 10) * (9 - (M mod 6))) mod 11;
            RutAux := RutAux div 10;
            M := M + 1;
        end;

        if S <> 0 then
            CharDV := S + 47
        else
            CharDV := 'K';

        if DV = CharDV then
            exit(true)
        else
            exit(false);
    end;

}

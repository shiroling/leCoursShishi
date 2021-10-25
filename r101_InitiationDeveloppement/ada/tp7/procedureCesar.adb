
pakage body cesar is
    procedure lireMessage(mess: in out Message) is
        i: Integer;
        begin
            i:= 0;
                put("Ecrit ton mot");
                    while i<mess.nbChar and i<MAX_LENGTH loop
                        get(mess.texte(i));
                        i:= i+1;
                    end loop;
        end lireMessage;

    procedure printMessage (mess: in Message) is
        i: Integer; 
        begin
            i:= 0;
            while i< mess.nbChar loop
                put(mess.texte(i));
                i:= i+1;
            end loop;
        end printMessage;

    procedure decriptMessage (mess: in Message);
     is
        i: Integer; 
        begin
            i:= 0;
            while i< mess.nbChar loop
                put(mess.texte(i));
                i:= i+1;
            end loop;
        end decriptMessage;
end cesar
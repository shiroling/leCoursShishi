package body App is

    procedure find (app : in Type_App; user : in Type_Usager; index_pos : out Integer; finded : out Boolean)
    is

        i: Integer;

    begin

        finded:= False;

        i:= 1;
        while i <= app.nbUser and finded = False loop
            if app.user_array(i) = user then
                finded:= True;
                index_pos:= i;
            end if;
            i:= i + 1;
        end loop;

    end find;

    procedure addLast (app : in out Type_App; user : in Type_Usager)
    is

        isFinded: Boolean;
        y_pos: Integer;

    begin

        if app.nbUser + 1 > 100 then
            raise DEBORDEMENT;
        end if;

        find(app, user, y_pos, isFinded);
        if isFinded = True then
            raise ALREADY_EXIST;
        end if;

        app.nbUser:= app.nbUser + 1;
        app.user_array(app.nbUser):= user;

    end addLast;

    procedure remove (app : in out Type_App; id : in Integer)
    is

        i: Integer;

    begin

        if app.nbUser = 0 then
            raise EMPTY_ARRAY;
        end if;
        if id > app.nbUser then
            raise DEBORDEMENT;
        end if;

        i:= id;
        while i < app.nbUser - 1 loop
            app.user_array(i):=  app.user_array(i + 1);
            i:= i + 1;
        end loop;

        app.nbUser:= app.nbUser - 1;

    end remove;

    procedure sort (app : in out Type_App)
    is

        permutation: Boolean;
        passage: Integer;
        temp: Type_Usager;
        i: Integer;

    begin

    permutation:= True;
    passage := 1;
    while permutation = True loop
        permutation:= False;
        passage:= passage + 1;
        i:= 1;
        while i < app.nbUser - passage loop
            if app.user_array(i).numero_adherent > app.user_array(i + 1).numero_adherent then
                permutation:= True;
                temp:= app.user_array(i);
                app.user_array(i):= app.user_array(i + 1);
                app.user_array(i + 1):= temp;
            end if;
            i:= i + 1;
        end loop;
    end loop;

    end sort;

    procedure readApp (app : in Type_App)
    is

        i: Integer;

    begin

    i:= 1;
    while i <= app.nbUser loop
        put_line("==========" & Integer'Image(i) & " ==========");
        putUsager(app.user_array(i));
        i:= i + 1;
    end loop;

    end readApp;

end App;

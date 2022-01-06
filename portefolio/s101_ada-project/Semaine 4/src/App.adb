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

        WriteOnFile(user);

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

    function choiceUser (app : in Type_App) return Integer
    is

        i : Integer;
        choice : Integer;

    begin

    i:= 1;
    while i <= app.nbUser loop
        put_line(Integer'Image(i) & " | " & app.user_array(i).nom);
        i:= i + 1;
    end loop;

    loop
        put_line("Merci d'entrer le nombre correspondant a l'utilisateur voulu !");
        put(">>> ");
        get(choice);
        exit when choice >= 1 and choice <= app.nbUser;
    end loop;

    return choice;

    end choiceUser;

    procedure find_by_name (app : in Type_App; user : out Type_Usager; finded : out Boolean)
    is

        i: Integer;
        longueur: Integer;
        userTest: Type_Usager;

    begin

    put_line("Merci d'entrer le nom pour la recherche !");
    put_line("/!\ Attention la recherche est sensible a la majuscule /!\");
    put(">>> ");
    skip_line;
    get_line(userTest.nom, userTest.longueur);

    i:= 1;
    finded:= False;
    while i <= app.nbUser and finded = False loop
    put_line("===============");
    put(longueur);
        if app.user_array(i).nom(1..app.user_array(i).longueur) = userTest.nom(1..userTest.longueur) then
            user:= app.user_array(i);
            finded:= True;
        end if;
        i:= i + 1;
    end loop;

    if finded then
        putUsager(user);
    else
        put_line("Aucun utilisateur trouve !");
    end if;

    end find_by_name;

    procedure cleanApp (app : in out Type_App)
    is

        i: Integer;

    begin
        sort(app);

        i:= 1;
        while i <= app.nbUser - 1 loop
            if app.user_array(i) = app.user_array(i + 1) then
                remove(app, i);
            end if;
            i:= i + 1;
        end loop;

    end cleanApp;

end App;
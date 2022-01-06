package body Usager is

    -- Opération de lecture afin de saisir les champs de l'enregistrement
    procedure getUser (new_user: in out Type_Usager)
    is
        name: string(1 .. 30) := (others => ' ');
        phone: string(1 .. 10) := (others => ' ');
        email: string(1 .. 30) := (others => ' ');
        id: Integer;
        Last: Integer;
        new_birthday_year : Integer;
    begin

        put("Quel est le numero d'adherant de l'usager ?");
        new_line;
        get(id);
        new_user.id:= id;

        skip_line;

        put("Quel est le nom de l'usager ?");
        new_line;
        get_line(name, Last);
        new_user.name:= name;

        put("Quel est le telephone de l'usager ?");
        new_line;
        get_line(phone, Last);
        new_user.phone:= phone;

        put("Quel est l'email de l'usager ?");
        new_line;
        skip_line;
        get_line(email, Last);
        new_user.email:= email;

        put("Quel est l'annee de naissance de l'usager ?");
        new_line;
        get(new_birthday_year);
        new_user.birthday_year:= new_birthday_year;

    end getUser;

    -- Opération d'affichage d'un enregistrement User
    procedure putUser (user: Type_Usager)
    is    
    begin

        put_line("Le numero d'adherent de l'usager est " & Integer'Image(user.id));
        put_line("Son nom est " & user.name);
        put_line("Son annee de naissance est " & Integer'Image(user.birthday_year));
        put_line("Son email est " & user.email);
        put_line("Son numero de telephone est " & user.phone);


    end putUser;

    -- Opération de calcul de l'âge d'un user
    function getAge (user: Type_Usager) return Integer
    is
    begin

        return 2021 - user.birthday_year;

    end getAge;

    -- Opération de comparaison 'égal' de l'enregistrement d'un User
    function "=" (first_user: Type_Usager; second_user: Type_Usager) return Boolean
    is
        balise: Boolean:= True;
    begin

        if first_user.name /= second_user.name then
            balise:= False;
        elsif first_user.birthday_year /= second_user.birthday_year then
            balise:= False;
        end if;

        return balise;

    end "=";

    -- Opération de comparaisons de deux User
    function identityCompare (first_user: Type_Usager; second_user: Type_Usager) return Boolean
    is
        balise: Boolean := True;
    begin
        
        if first_user.id /= second_user.id then
            balise:= False;
        elsif first_user.name /= second_user.name then
            balise:= False;
        elsif first_user.birthday_year /= second_user.birthday_year then
            balise:= False;
        end if;

        return balise;
    end identityCompare;

    -- Opération de comparaison 'inférieur' de l'objet "identifiant" d'un User
    function "<" (first_user: Type_Usager; second_user: Type_Usager) return Boolean
    is
    begin

        if first_user.id < second_user.id then
            return True;
        else
            return False;
        end if;

    end "<";

        -- Opération de comparaison 'inférieur' de l'objet "identifiant" d'un User
    function ">" (first_user: Type_Usager; second_user: Type_Usager) return Boolean
    is
    begin

        if first_user.id > second_user.id then
            return True;
        else
            return False;
        end if;

    end ">";

end Usager;
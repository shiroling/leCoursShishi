package body Bench is

    -- Banc d'essai que l'âge correspond à l'âge attendu
    function B_getAge (waitedAge: Integer; user: Type_Usager) return Boolean
    is
        balise: Boolean:= True;
    begin

        if getAge(user) /= waitedAge then
            balise:= False;
        end if;

        return balise;

    end B_getAge;

    -- Banc d'essai de vérification que deux éléments sont égaux
    function B_Equal (first_user: Type_Usager; second_user: Type_Usager) return Boolean
    is
        balise: Boolean:= True;
    begin

        if first_user.name /= second_user.name then
            balise:= False;
        elsif first_user.birthday_year /= second_user.birthday_year then
            balise:= False;
        end if;

        return balise;

    end B_Equal;

    -- Banc d'essai de vérification qu'une affectation donne bien les deux mêmes enregistrements
    function B_Affect (first_user: Type_Usager; second_user: Type_Usager) return Boolean
    is
        balise: Boolean:= False;
    begin

        if first_user = second_user then
            balise:= True;
        end if;

        return balise;

    end B_Affect;

    -- Banc d'essai de vérification qu'une affectation donne bien les deux mêmes enregistrements
    function B_identityCompare (first_user: Type_Usager; second_user: Type_Usager) return Boolean
    is
        balise: Boolean:= True;
    begin

        if first_user.id /= second_user.id then
            balise:= False;
        elsif first_user.name /= second_user.name then
            balise:= False;
        elsif first_user.birthday_year /= second_user.birthday_year then
            balise:= False;
        elsif first_user.phone /= second_user.phone then
            balise:= False;
        elsif first_user.email /= second_user.email then
            balise:= False;
        end if;

        return balise;

    end B_identityCompare;

    -- Banc d'essai de vérification d'un "<"
    function B_ID_Inf (first_user: Type_Usager; second_user: Type_Usager) return Boolean
    is
        balise: Boolean:= False;
    begin

        if first_user.id < second_user.id then
            balise:= True;
        end if;

        return balise;

    end B_ID_Inf;


end Bench;
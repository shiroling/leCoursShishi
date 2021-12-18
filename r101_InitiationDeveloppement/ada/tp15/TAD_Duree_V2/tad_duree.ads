package TAD_Duree is

    HEURE_INVALIDE : exception;
    MINUTE_INVALIDE : exception;
    SECONDE_INVALIDE : exception;

    type Duree is private;



    -- retourne un type Duree initialisé avec les valeures:
    -- heures (h), minites (m), secondes(s) 
    function uneDuree (h, m, s: in Integer) return Duree;

    -- Retourne une valeure entiére egale aux heures contenues dans Durée
    function heures (d : in Duree) return Integer;


    -- Retourne une valeure entiére egale aux minutes contenues dans Durée
    function minutes (d : in Duree) return Integer;


    -- Retourne une valeure entiére egale aux secondes contenues dans Durée
    function secondes (d : in Duree) return Integer;

    -- retourne VRAI si les durées d1 et d2 sont egales
    -- retourne FAUX sinon
    function "=" (d1 : in Duree; d2 : in Duree) return Boolean;

    -- retourne VRAI si la durée d1 est inférieure a la durée d2
    -- retourne FAUX sinon
    function "<" (d1 : in Duree; d2 : in Duree) return Boolean;

    -- ajoute une seconde à la Durée en entrée
    procedure plusUneSeconde (d : in out Duree);

private
    type Duree is record
        s : Integer;
    end record;
end TAD_Duree;

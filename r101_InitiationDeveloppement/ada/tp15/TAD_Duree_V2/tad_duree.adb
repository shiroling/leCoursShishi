package body TAD_Duree is


    -- retourne un type Duree initialisé avec les valeures:
    -- heures (h), minutes (m), secondes(s) 
    function uneDuree (h, m, s: in Integer) return Duree is
        d : Duree;
        
        BEGIN
            if s < 0 OR s > 59 then
                raise SECONDE_INVALIDE;
            end if;
            if m < 0 OR m > 59 then
                raise MINUTE_INVALIDE;
            end if;
            if h < 0 then
                raise HEURE_INVALIDE;
            end if;

            d.s:= s + 60*m + 3600*h;
            return d;
        end uneDuree;

    -- Retourne une valeure entiére egale aux heures contenues dans Durée
    function heures (d : in Duree) return Integer is
        begin
            return d.s/3600;
        end heures;

    -- Retourne une valeure entiére egale aux minutes contenues dans Durée
    function minutes (d : in Duree) return Integer is
        begin 
            return (d.s mod 3600)/60;
        end minutes;
    -- Retourne une valeure entiére egale aux secondes contenues dans Durée
    function secondes (d : in Duree) return Integer is
        begin 
            return (d.s mod 3600) mod 60;
        end secondes;

    -- retourne VRAI si les durées d1 et d2 sont egales
    -- retourne FAUX sinon
    function "=" (d1 : in Duree; d2 : in Duree) return Boolean is
        begin
            return d1.s = d2.s;
        end "=";
    
    -- retourne VRAI si la durée d1 est inférieure a la durée d2
    -- retourne FAUX sinon
    function "<" (d1: in Duree; d2: in Duree) return Boolean is
        begin
            return d1.s < d2.s;
        end "<";

    -- ajoute une seconde à la Durée en entrée
    procedure plusUneSeconde (d : in out Duree) is
        BEGIN
            d.s:=d.s+ 1;
        END plusUneSeconde;

end TAD_Duree;
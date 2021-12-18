package body TAD_Duree is


    -- retourne un type Duree initialisé avec les valeures:
    -- heures (h), minutes (m), secondes(s) 
    function uneDuree (h, m, s: in Integer) return Duree is
        d : Duree;
        
        BEGIN
            if h < 0 then
                raise HEURE_INVALIDE;
            end if;

            if m < 0 OR m > 59 then
                raise MINUTE_INVALIDE;
            end if;

            if s < 0 OR s > 59 then
                raise SECONDE_INVALIDE;
            end if;

            d.h:= h;
            d.m:= m;
            d.s:= s;

            return d;
        end uneDuree;

    -- Retourne une valeure entiére egale aux heures contenues dans Durée
    function heures (d : in Duree) return Integer is
        begin 
            return d.h;
        end heures;

    -- Retourne une valeure entiére egale aux minutes contenues dans Durée
    function minutes (d : in Duree) return Integer is
        begin 
            return d.m;
        end minutes;
    -- Retourne une valeure entiére egale aux secondes contenues dans Durée
    function secondes (d : in Duree) return Integer is
        begin 
            return d.s;
        end secondes;

    -- retourne VRAI si les durées d1 et d2 sont egales
    -- retourne FAUX sinon
    function "=" (d1 : in Duree; d2 : in Duree) return Boolean is
        begin
            return d1.h = d2.h AND d1.m = d2.m AND d1.s = d2.s;
        end "=";
    -- retourne VRAI si la durée d1 est inférieure a la durée d2
    -- retourne FAUX sinon
    function "<" (d1: in Duree; d2: in Duree) return Boolean is
        isHigher: Boolean:= FALSE;

        begin
            if d1.h <= d2.h then
                if d1.h = d2.h then
                    if d1.m <= d2.m then
                        if d1.m = d2.m then

                            if d1.s > d2.s then
                                isHigher:= TRUE;
                            end if;

                        end if;
                    else 
                        isHigher:= TRUE;
                    end if;

                end if;
            else 
                isHigher:= TRUE;
            end if;

            return isHigher;
        end "<";



    -- ajoute une seconde à la Durée en entrée
    procedure plusUneSeconde (d : in out Duree) is
        BEGIN
            if d.s /= 59 then
                d.s:= d.s+ 1;
            else
                if d.m /= 59 then
                    d.m:= d.m+ 1;
                    d.s:= 0;
                else
                    d.h:= d.h+ 1;
                    d.s:= 0;
                    d.m:= 0;
                end if;
            end if;
        END plusUneSeconde;

end TAD_Duree;
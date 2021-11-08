package body animals is


 	procedure lireAnimal (animal: out TabCharacter; nb: out integer) is
		mFin, val: Character;


		begin
			put_line("End marker : ");
			get(mFin);

			put_line("premier Charactére: ");
			get(val); 
			nb:= 0;
			while val /= mfin and nb<= MAX_LENGTH loop
				animal(nb):= val;
				put_line("Charactére suivant: ");
				get(val);
				nb:= nb+1;
			end loop;

			nb:= nb-1;
		end lireAnimal;


end animals;
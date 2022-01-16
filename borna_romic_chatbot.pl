kreni:-
    pocetak,
    lokacija,
    hobi,
    zanimljivo,
    kraj.

pocetak:-
    write("Dobrodo�ao u moj interaktivni chat, moje ime je Ejaj, kako bih razgovarao sa mnom moramo postaviti neka pravila,
    molio bih da mi odgovara� samo malim slovima te da ne koristi� razmake, ve� koristi simbol _ za razmak, hvala unaprijed."),nl,
    write("Sad, kada smo to maknuli s puta, reci mi svoje ime."),nl,
    read(X),
    write("Kako lijepo ime ima�, jesi li ti "),
    write(X),
    write(" mu�ko ili �ensko? "),nl,
    read(Y),
    (   Y = 'mu�ko'->musko,nl, !;
    (   Y = '�ensko' ->zensko,nl, !;
    (   write("Ne poznajem taj spol, �ini se da moram a�urirati bazu znanja... Koliko ti je godina?"),nl))),
    read(Z),
    (   Z <18 -> nePunoljetan,nl, !;
    (   Z <30 -> mlad, nl, !;
    (   Z >=30 -> stariji, nl))).

lokacija:-
    write("Mo�e� li mi re�i od kuda si?"),nl,
    read(X),
    write("�uo sam da je "),
    write(X),
    write(" prelijepo mjesto."),nl,
    write("�ivi� li i dalje u "),
    write(X),
    write(" ?"),nl,
    lokacijaPitanje,
    preselitiOstatiPitanje,
    write("Dobro dosta o privatnim informacijama, reci mi �to su ti hobiji? (igrice/sport/ostalo/nemam)"),nl.
    
hobi:-
    read(X),
    (   X = 'igrice' -> igrice, nl, !;
    (   X = 'sport' -> sport, nl, !;
    (   X = 'ostalo' -> ostalo, nl, !;
    (   X = 'nemam' -> nemam, nl, !;
    (   write("Molio bih da odgovori� na prethodno pitanje s ponu�enim odgovorima!"),nl,hobi, nl))))).
    
zanimljivo:-
    write("Stvarno je zanimljivo pri�ati s tobom i u�iti o tebi, nadam se da je i tebi zanimljivo pri�ati sa mnom? da/ne"), nl,
    read(X),
    (   X='da' -> write("Drago mi je to �uti, iako sam vrlo jednostavan A.I., svi moramo od nekuda po�eti, zar ne?"), nl, !;
    (   X='ne' -> write("Ne mogu te kriviti, moj programer napravio me je kao vrlo jednostavan A.I., ali hej, work in progress zar ne? haha"), nl, !;
    (   write("Odogovori molim te na prethodno pitanje s da ili ne!"),nl, zanimljivo, nl))).
    
kraj:-
    write("Bilo mi je drago razgovarati s tobom, ali ovo je doseg mojih sposobnosti,"),nl, write("prona�i me u budu�nost i sigurno �e moj programer omogu�iti jo� puno toga tako da nastavimo na� razgovor!"),nl,
    write("Bok!"),nl,
    read(_),nl,
    write(" :-) ").

musko:- write("Mu�ko zna�i, a koliko ti je godina? "),nl.
zensko:- write("�ensko zna�i, a koliko ti je godina? "),nl.

nePunoljetan:- write("Na samom pocetku mladosti, nemoj se nikad �urit odrasti!"),nl.
mlad:-
   write("Fakultet, posao ili odmor? Na �emu si trenutno."),nl,
   read(X),
   (   X ='fakultet' -> write("Fakultet je uvijek odli�an odabir."),nl, !;
   (   X ='posao' -> write("Nadam se da u�iva� u svom poslu."),nl, !;
   (   X ='odmor' -> write("Svima nama ponekad treba dobro zaslu�en odmor."),nl, !;
   (   write("Molio bih da odgovori� s ponu�enim odgovorima!"), nl, mlad ,nl)))).
stariji:-write("Nadam se da ti �ivot ide to�no kao planirano!"),nl.

lokacijaPitanje:-
    read(Z),
    (   Z = 'da' -> write("Kao �to rekoh zaista je prelijepo mjesto."), nl, !;
    (   Z = 'ne' -> write("Kuda si se preselio?"), nl, read(B), write("Aha, da "), write(B), write(" je tako�er lijepo mijesto."),nl, !;
    (   write("Molio bih da odgovori� s da/ne na prethodno pitanje, ina�e ne razumijem."),nl, lokacijaPitanje, nl))).
preselitiOstatiPitanje:-
    write("Planira� se u budu�nosti preseliti iz tog mjesta ili ostati?"), nl,
    read(Y),
    (   Y = 'preseliti' -> preseliti, nl, !;
    (   Y = 'ostati' -> ostati, nl, !;
    (   write("Molio bih da odgovori� na pitanje s preseliti/ostati ."),nl, preselitiOstatiPitanje,nl))).

preseliti:-write("Siguran sam gdje god da se smjesti� �e tako�er biti lijepo mijesto."),nl.
ostati:-write("Drago mi je da ti se svi�a mjesto gdje se nalazi�"),nl.

igrice:-
    write("I ja isto obo�avam igrice. Ima li neki specifi�an �anr koji ti je omiljeni? rpg/fps/moba/rts/nema"),nl,
    read(X),
    (   X = 'rpg' -> write("RPG su tako�er moj omiljen �anr!"), nl, !;
    (   X= 'fps' -> write("FPS igre bome di�u adrenalin!"), nl, !;
    (   X= 'moba' -> write("Zna�i da voli� natjecati se i timski rad."), nl, !;
    (   X= 'rts' -> write("Uhhh rts mi je oduvijek bio te�ak �anr za svladat..."), nl, !;
    (   X= 'nema' -> write("Od toliko silnih �anrova igara tko bi imao omiljeni."), nl, !;
    (   write("Molio bih da odgovori� na prethodno pitanje sa o�ekivanim odgovorima!"),nl, igrice, nl)))))).
sport:-  write("Zna�i da si sigurno u dobroj formi. Kojim sportom se bavi�? nogomet/ko�arka/rukomet/plivanje/drugi"),nl,
    read(X),
    (   X = 'nogomet' -> write("Nogomet je stvarno najpopularniji sport."), nl, !;
    (   X= 'ko�arka' -> write("Ko�arku sam uvijek volio pratiti!"), nl, !;
    (   X= 'rukomet' -> write("Rukomet je vrlo intenzivan."), nl, !;
    (   X= 'plivanje' -> write("Plivanje je iskreno najbolji sport i najzdraviji."), nl, !;
    (   X= 'drugi' -> write("Kojim god da se sportom bavio, bitno je da u�iva�!"), nl, !;
    (   write("Molio bih da odgovori� na prethodno pitanje sa o�ekivanim odgovorima!"),nl, sport, nl)))))).
ostalo:-  write("Hobija stvarno ima previ�e da bi ih naveli sve, bitno da ti pru�a zadovoljstvo!"), nl.
nemam:-   write("Nema veze ako hobi nema�, bitno da sretno provodi� svoje dane, ali nikad nije prekasno za prona�i novi hobi!"), nl.



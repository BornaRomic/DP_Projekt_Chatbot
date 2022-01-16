kreni:-
    pocetak,
    lokacija,
    hobi,
    zanimljivo,
    kraj.

pocetak:-
    write("Dobrodošao u moj interaktivni chat, moje ime je Ejaj, kako bih razgovarao sa mnom moramo postaviti neka pravila,
    molio bih da mi odgovaraš samo malim slovima te da ne koristiš razmake, veæ koristi simbol _ za razmak, hvala unaprijed."),nl,
    write("Sad, kada smo to maknuli s puta, reci mi svoje ime."),nl,
    read(X),
    write("Kako lijepo ime imaš, jesi li ti "),
    write(X),
    write(" muško ili žensko? "),nl,
    read(Y),
    (   Y = 'muško'->musko,nl, !;
    (   Y = 'žensko' ->zensko,nl, !;
    (   write("Ne poznajem taj spol, èini se da moram ažurirati bazu znanja... Koliko ti je godina?"),nl))),
    read(Z),
    (   Z <18 -> nePunoljetan,nl, !;
    (   Z <30 -> mlad, nl, !;
    (   Z >=30 -> stariji, nl))).

lokacija:-
    write("Možeš li mi reæi od kuda si?"),nl,
    read(X),
    write("Èuo sam da je "),
    write(X),
    write(" prelijepo mjesto."),nl,
    write("Živiš li i dalje u "),
    write(X),
    write(" ?"),nl,
    lokacijaPitanje,
    preselitiOstatiPitanje,
    write("Dobro dosta o privatnim informacijama, reci mi što su ti hobiji? (igrice/sport/ostalo/nemam)"),nl.
    
hobi:-
    read(X),
    (   X = 'igrice' -> igrice, nl, !;
    (   X = 'sport' -> sport, nl, !;
    (   X = 'ostalo' -> ostalo, nl, !;
    (   X = 'nemam' -> nemam, nl, !;
    (   write("Molio bih da odgovoriš na prethodno pitanje s ponuðenim odgovorima!"),nl,hobi, nl))))).
    
zanimljivo:-
    write("Stvarno je zanimljivo prièati s tobom i uèiti o tebi, nadam se da je i tebi zanimljivo prièati sa mnom? da/ne"), nl,
    read(X),
    (   X='da' -> write("Drago mi je to èuti, iako sam vrlo jednostavan A.I., svi moramo od nekuda poèeti, zar ne?"), nl, !;
    (   X='ne' -> write("Ne mogu te kriviti, moj programer napravio me je kao vrlo jednostavan A.I., ali hej, work in progress zar ne? haha"), nl, !;
    (   write("Odogovori molim te na prethodno pitanje s da ili ne!"),nl, zanimljivo, nl))).
    
kraj:-
    write("Bilo mi je drago razgovarati s tobom, ali ovo je doseg mojih sposobnosti,"),nl, write("pronaði me u buduænost i sigurno æe moj programer omoguæiti još puno toga tako da nastavimo naš razgovor!"),nl,
    write("Bok!"),nl,
    read(_),nl,
    write(" :-) ").

musko:- write("Muško znaèi, a koliko ti je godina? "),nl.
zensko:- write("žensko znaèi, a koliko ti je godina? "),nl.

nePunoljetan:- write("Na samom pocetku mladosti, nemoj se nikad žurit odrasti!"),nl.
mlad:-
   write("Fakultet, posao ili odmor? Na èemu si trenutno."),nl,
   read(X),
   (   X ='fakultet' -> write("Fakultet je uvijek odlièan odabir."),nl, !;
   (   X ='posao' -> write("Nadam se da uživaš u svom poslu."),nl, !;
   (   X ='odmor' -> write("Svima nama ponekad treba dobro zaslužen odmor."),nl, !;
   (   write("Molio bih da odgovoriš s ponuðenim odgovorima!"), nl, mlad ,nl)))).
stariji:-write("Nadam se da ti život ide toèno kao planirano!"),nl.

lokacijaPitanje:-
    read(Z),
    (   Z = 'da' -> write("Kao što rekoh zaista je prelijepo mjesto."), nl, !;
    (   Z = 'ne' -> write("Kuda si se preselio?"), nl, read(B), write("Aha, da "), write(B), write(" je takoðer lijepo mijesto."),nl, !;
    (   write("Molio bih da odgovoriš s da/ne na prethodno pitanje, inaèe ne razumijem."),nl, lokacijaPitanje, nl))).
preselitiOstatiPitanje:-
    write("Planiraš se u buduænosti preseliti iz tog mjesta ili ostati?"), nl,
    read(Y),
    (   Y = 'preseliti' -> preseliti, nl, !;
    (   Y = 'ostati' -> ostati, nl, !;
    (   write("Molio bih da odgovoriš na pitanje s preseliti/ostati ."),nl, preselitiOstatiPitanje,nl))).

preseliti:-write("Siguran sam gdje god da se smjestiš æe takoðer biti lijepo mijesto."),nl.
ostati:-write("Drago mi je da ti se sviða mjesto gdje se nalaziš"),nl.

igrice:-
    write("I ja isto obožavam igrice. Ima li neki specifièan žanr koji ti je omiljeni? rpg/fps/moba/rts/nema"),nl,
    read(X),
    (   X = 'rpg' -> write("RPG su takoðer moj omiljen žanr!"), nl, !;
    (   X= 'fps' -> write("FPS igre bome dižu adrenalin!"), nl, !;
    (   X= 'moba' -> write("Znaèi da voliš natjecati se i timski rad."), nl, !;
    (   X= 'rts' -> write("Uhhh rts mi je oduvijek bio težak žanr za svladat..."), nl, !;
    (   X= 'nema' -> write("Od toliko silnih žanrova igara tko bi imao omiljeni."), nl, !;
    (   write("Molio bih da odgovoriš na prethodno pitanje sa oèekivanim odgovorima!"),nl, igrice, nl)))))).
sport:-  write("Znaèi da si sigurno u dobroj formi. Kojim sportom se baviš? nogomet/košarka/rukomet/plivanje/drugi"),nl,
    read(X),
    (   X = 'nogomet' -> write("Nogomet je stvarno najpopularniji sport."), nl, !;
    (   X= 'košarka' -> write("Košarku sam uvijek volio pratiti!"), nl, !;
    (   X= 'rukomet' -> write("Rukomet je vrlo intenzivan."), nl, !;
    (   X= 'plivanje' -> write("Plivanje je iskreno najbolji sport i najzdraviji."), nl, !;
    (   X= 'drugi' -> write("Kojim god da se sportom bavio, bitno je da uživaš!"), nl, !;
    (   write("Molio bih da odgovoriš na prethodno pitanje sa oèekivanim odgovorima!"),nl, sport, nl)))))).
ostalo:-  write("Hobija stvarno ima previše da bi ih naveli sve, bitno da ti pruža zadovoljstvo!"), nl.
nemam:-   write("Nema veze ako hobi nemaš, bitno da sretno provodiš svoje dane, ali nikad nije prekasno za pronaæi novi hobi!"), nl.



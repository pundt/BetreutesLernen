-- HINWEIS: Werden von einer Tabelle keine speziellen Spalten gefordert
-- wählen Sie bitte selbst sinnvolle Spalten für die Ausgabe


-- JOIN Aufgaben

-- Aufgabe 1
-- Alle Kunden und deren Buchungen
SELECT Vorname + ' ' + Nachname, BuchungsDatum, IDBuchung
FROM tblKunde
JOIN tblBuchung ON FKKunde = IDKunde
--JOIN tblBuchungDetail ON FKBuchung = IDBuchung
--WHERE BuchungsDatum is not null 



-- Aufgabe 2
-- Ermitteln Sie alle Kunden die keine Buchung haben
SELECT Vorname + ' ' + Nachname, BuchungsDatum
FROM tblKunde
LEFT JOIN tblBuchung ON FKKunde = IDKunde
WHERE BuchungsDatum is null




-- aufgabe 3
-- Anzahl der Buchungen je Kunde (vorname, nachname + anzahl)

-- ANGENOMMEN dieses Ergebnis liegt in einer Tabelle XXX vor
select COUNT(*) as AnzahlBuchung, FKKunde
from tblbuchung
group by FKKunde










-- dann kann ich hier die Tabelle XXX einbauen!! (SubQuery, Unterabfragen)
select Vorname, Nachname, tblAnzahlBuchungJeKunde.AnzahlBuchung
from tblKunde join (
	select COUNT(*) as AnzahlBuchung, FKKunde
	from tblbuchung
	group by FKKunde
) 
tblAnzahlBuchungJeKunde on IDKunde = tblAnzahlBuchungJeKunde.FKKunde












-- liefert ein Ergebnis
-- aber ein FALSCHES!! Vorname und Nachname als Gruppierungsspalten sind
-- denkbar schlechte Alternativen!!!
select Vorname, Nachname, COUNT(*)
from tblKunde join tblBuchung on IDKunde = FKKunde
group by Vorname, nachname



-- Vorschlag - ABER FALSCH!!!!
--SELECT Count(IDBuchung), Vorname + ' ' + Nachname, Anzahl
--FROM tblBuchung
--JOIN tblKunde ON IDBuchung = FKKunde
--JOIN tblBuchungDetail ON FKBuchung = IDBuchungDetail
--GROUP BY Vorname + ' ' + Nachname, Anzahl, IDBuchung





-- Aufgabe 4
-- Buchungen ohne Klienten Zuordnung


SELECT IDBuchung, BuchungsDatum
FROM tblBuchung



-- Aufgabe 5
-- Buchungsdetails je Buchung

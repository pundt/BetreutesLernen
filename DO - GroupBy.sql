-- Grundlagen
		--select SPALTE
		--from TABELLE
		--where BEDINGUNG
		--group by SPALTE
		--having BEDINGUNG
		--order by SPALTE

-- liefert alle Zeilen von Buchung ab
select *
from tblBuchung



-- liefert alle Zeilen von Buchung ab
select *
from tblBuchung
where BuchungsDatum between '1.1.2015' and '31.12.2015'


--- group by GRUPPIERT, FASST ZEILEN Zusammen
--- aber wenn ich zeilen zusammen fasse, welchen Werte zeige
-- ich dann von den zusammengefassten Zeilen an???
select FKKunde
from tblBuchung
group by FKKunde		-- fasse die Zeilen zusammen, die den selben fkKunde Wert haben

-- fasse zusammen und ZÄHLE je GRUPPE die Anzahl der ZEILEN = *
select FKKunde, COUNT(*)
from tblBuchung
group by FKKunde	

select FKKunde, COUNT(FKKunde)
from tblBuchung
group by FKKunde	

-- ACHTUNG! zählt nur Werte, null ist kein Wert, wird nicht gezählt ...
select FKKunde, COUNT(BuchungsDatum)
from tblBuchung
group by FKKunde	







-- Abfragen zu tblBuchungDetail
-- Summe der Bestellpreise je fkBuchung


SELECT sum(BestellPreis), FKBuchung
FROM tblBuchungDetail
GROUP BY fkbuchung





-- Anzahl der Buchungsdetails je fkbuchung

SELECT Anzahl
FROM tblBuchungDetail
GROUP BY fkbuchung




-- minimalen bestellpreis je fkbuchung


SELECT min(BestellPreis)
FROM tblBuchungDetail
GROUP BY fkbuchung


-- Anzahl der Kunden je PLZ


-- das kleinste Geburtsdatum je plz


-- das teuerste Seminar je Kategorie


--- Beispiel 1 - pAnzahlBuchungenKunden
---		liefert die Anzahl der Buchungen für die angegebene IDKUnde zurück
--		wenn der Kunde nicht existiert soll -1 zurück geliefert werden.

USE dbBuchungIN19
GO

create PROC pAnzahlBuchungenKunden
	@IDkunde INT
AS

BEGIN
	-- Minimal Variante
	select COUNT(*) as anzahl
	from  tblBuchung
	where FKKunde = @IDkunde

END
GO



create PROC pAnzahlBuchungenKunden_KOMPLETT
	@IDkunde INT
AS

BEGIN
	-- Hilfsvariable
	declare @anzahl int
	set @anzahl = -1

	-- wenn ein Kunde mit der ID existiert
	if exists(select * from tblKunde where IDKunde = @IDkunde) 
	begin
		-- ermittle die Anzahl der Buchungen für diesen Kunden
		select @anzahl = COUNT(*)
		from tblBuchung 
		where FKKunde = @IDkunde
	end

	-- gib die Anzahl zurück
	select @anzahl as AnzahlBuchungen
END
GO

exec pAnzahlBuchungenKunden_KOMLETT 55



--- Beispiel 2 - pSeminarKategorien
---		liefert für eine übergebene IDKategorie die Anzahl der Seminare
---		die diese verwenden




--- Beispiel 3 - pSummeGehälter		@nachname varchar(50)
---		liefert die Summe der Gehälter für Mitarbeiter mit dem selben 
---		Nachnamen

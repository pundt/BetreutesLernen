--- Beispiel 1 - pAnzahlBuchungenKunden
---		liefert die Anzahl der Buchungen f�r die angegebene IDKUnde zur�ck
--		wenn der Kunde nicht existiert soll -1 zur�ck geliefert werden.

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
		-- ermittle die Anzahl der Buchungen f�r diesen Kunden
		select @anzahl = COUNT(*)
		from tblBuchung 
		where FKKunde = @IDkunde
	end

	-- gib die Anzahl zur�ck
	select @anzahl as AnzahlBuchungen
END
GO

exec pAnzahlBuchungenKunden_KOMLETT 55



--- Beispiel 2 - pSeminarKategorien
---		liefert f�r eine �bergebene IDKategorie die Anzahl der Seminare
---		die diese verwenden




--- Beispiel 3 - pSummeGeh�lter		@nachname varchar(50)
---		liefert die Summe der Geh�lter f�r Mitarbeiter mit dem selben 
---		Nachnamen

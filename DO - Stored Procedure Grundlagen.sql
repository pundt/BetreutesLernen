-- create procedure NAME as
-- begin
--        BELIEBIG_VIELE_STATEMENTS
-- end
use dbBuchungIN19
go

drop procedure pAlleBuchungen
go


create procedure pAlleBuchungen as
begin
	select * from tblBuchung
end
go

alter procedure pAlleBuchungen as
begin
	-- frage alle ab
	select * from tblBuchung
	-- füge etwas hinzu
	insert into tblBuchung values (2, '1.1.2016')
end

-- Procedures mit Parameter
go

create procedure pKundenBuchungen (
	@idKunde int
) as
begin
	select * from tblBuchung where FKKunde = @idKunde
end
go

-- Beispielaufruf
exec pKundenBuchungen 3

-- im Unterschied zu einer Programmiersprache OHNE Klammern
execute dbo.pKundenBuchungen (3)

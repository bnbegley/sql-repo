DECLARE @index int = 0;
DECLARE @Sum int = 0;

WHILE @index <= 25
begin
	SET @Sum = @Sum + @index;
	SET @index = @index + 1;
end
PRINT 'The sum of 1 to 25 is ' +CAST(@sum as nvarchar(10));

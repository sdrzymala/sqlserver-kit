drop function [RemoveNonAlphaCharacters];
go
Create Function [dbo].[RemoveNonAlphaCharacters](@Temp VarChar(1000)) 
Returns VarChar(max) 
AS 
Begin 
 
    While PatIndex('%[^А-я]%', @Temp) > 0 
        Set @Temp = Stuff(@Temp, PatIndex('%[^А-я]%', @Temp), 1, '') 
 
    Return @TEmp 
End 

CREATE FUNCTION ZerosEsquerda
(
	@Tamanho INT,
	@Valor VARCHAR (MAX)
)

RETURNS VARCHAR (MAX)
AS
	BEGIN

	DECLARE @Retorno AS VARCHAR(MAX)

	IF(LEN (@Valor) <= @Tamanho)
		SET @Retorno = REPLICATE('0', @Tamanho - LEN (@Valor)) + @Valor

	ELSE
		SET @Retorno = @Valor
			
	RETURN @Retorno
END
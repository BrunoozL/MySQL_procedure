DELIMITER //
CREATE PROCEDURE insere_dados()
BEGIN
	DECLARE erro_sql TINYINT DEFAULT FALSE;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro_sql = TRUE;
START TRANSACTION;
  INSERT INTO produto (descricao, produto, estoque) VALUES ('Luvas', 12.99, 83);
  INSERT INTO produto (descricao, produto, estoque) VALUES ('Chinelo', 23.99, 92);
  INSERT INTO produto (descricao, produto, estoque) VALUES ('Jaqueta de couro', 79.99, 28);
  INSERT INTO produto (descricao, produto, estoque) VALUES ('Calça cargo', 98.00, 25);
  IF erro_sql = FALSE THEN
    COMMIT;
    SELECT 'Transação efetivada com sucesso.' AS Resultado;
  ELSE
    ROLLBACK;
    SELECT 'Erro na transação' AS Resultado;
  END IF;
END//
DELIMITER ;
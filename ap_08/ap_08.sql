-- 1.1 Faça um programa que gere um valor inteiro e o exiba
DO $$ 
BEGIN 
	RAISE NOTICE 'O valor gerado é: %', FLOOR(RANDOM() * 100)::INT; 
END; 
$$

-- 1.2 Faça um programa que gere um valor real e o exiba
DO $$ 
DECLARE
    valor NUMERIC := RANDOM() * 10;
BEGIN 
	RAISE NOTICE 'O valor gerado é: %', ROUND(valor,2); 
END; 
$$


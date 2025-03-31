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

-- 1.3 Faça um programa que gere um valor real entre 20 e 30, que represente um valor em celcius e faça a conversao em fahrenheit
DO $$ 
DECLARE
    valor NUMERIC := RANDOM() * (30 - 20 + 1) + 20;
BEGIN 
	RAISE NOTICE 'O valor gerado é: % resultado em Fahrenheit: %', ROUND(valor,2), ROUND( (valor * 1.8) + 32, 2 ) ; 

END; 
$$
-- 1.4 Faça um programa que gere três valores reais a, b, e c e mostre o valor de delta: aquele que calculamos para chegar às potenciais raízes de uma equação do segundo grau.
DO $$ 
DECLARE
    a NUMERIC := RANDOM() * 10;
    b NUMERIC := RANDOM() * 10;
    c NUMERIC := RANDOM() * 10;
    delta NUMERIC;
    x1 NUMERIC;
    x2 NUMERIC;
BEGIN 
	delta :=  (b ^ 2) - (4 * a * c);
  
    RAISE NOTICE 'DELTA %', delta;
END; 
$$




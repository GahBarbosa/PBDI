-- Função para gerar valor aleatório entre limite inferior e superior
CREATE OR REPLACE FUNCTION valor_aleatorio_entre(lim_inferior INT, lim_superior INT)
RETURNS INT AS $$
BEGIN
    RETURN FLOOR(RANDOM() * (lim_superior - lim_inferior + 1) + lim_inferior)::INT;
END;
$$ LANGUAGE plpgsql;

-- 1.1 Programa que verifica se um número é múltiplo de 3 (usando IF ELSE)
DO $$
DECLARE
    valor INT := valor_aleatorio_entre(1, 100);
BEGIN
    RAISE NOTICE 'O valor gerado é: %', valor;
    IF valor % 3 = 0 THEN
        RAISE NOTICE '% é divisível por 3', valor;
    ELSE
        RAISE NOTICE '% não é divisível por 3', valor;
    END IF;
END;
$$;

-- 1.1 Programa que verifica se um número é múltiplo de 3 (usando CASE)
DO $$ 
DECLARE
	valor INT := valor_aleatorio_entre(1, 100); 
BEGIN 
	RAISE NOTICE 'O valor gerado é: %', valor; 
	CASE 
		WHEN valor % 3 = 0 THEN
			RAISE NOTICE '% é divisivel por 3', valor; 
		ELSE 
			RAISE NOTICE '% não é divisivel por 3', valor; 
	END CASE; 
END; 
$$

-- 1.2 Programa que verifica se um número é múltiplo de 3 ou de 5 (usando IF ELSE)
DO $$
DECLARE
    valor INT := valor_aleatorio_entre(1, 100);
BEGIN
    RAISE NOTICE 'O valor gerado é: %', valor;
    IF valor % 3 = 0 THEN
        RAISE NOTICE '% é divisível por 3', valor;
    ELSIF valor % 5 = 0 THEN
        RAISE NOTICE '% é divisível por 5', valor;
    ELSE
        RAISE NOTICE '% não é divisível por 3 ou 5', valor;
    END IF;
END;
$$;
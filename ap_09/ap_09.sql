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

-- 1.2 Programa que verifica se um número é múltiplo de 3 ou de 5 (usando CASE)
DO $$ 
DECLARE
	valor INT := valor_aleatorio_entre(1, 100); 
BEGIN 
	RAISE NOTICE 'O valor gerado é: %', valor; 
	CASE 
		WHEN valor % 3 = 0 THEN
			RAISE NOTICE '% é divisivel por 3', valor;
		WHEN valor % 5 = 0 THEN
			RAISE NOTICE '% é divisivel por 5', valor;
		ELSE 
			RAISE NOTICE '% não é divisivel por 3 ou 5', valor; 
	END CASE; 
END; 
$$

-- 1.3 Função de menu para operações de soma, subtração, multiplicação e divisão (usando IF ELSE)
CREATE OR REPLACE FUNCTION menu(operacao INTEGER, op1 INTEGER, op2 INTEGER)
RETURNS TEXT AS $$
DECLARE
    resultado TEXT;
BEGIN
    IF operacao = 1 THEN
        resultado := op1 || ' + ' || op2 || ' = ' || (op1 + op2);
    ELSIF operacao = 2 THEN
        resultado := op1 || ' - ' || op2 || ' = ' || (op1 - op2);
    ELSIF operacao = 3 THEN
        resultado := op1 || ' * ' || op2 || ' = ' || (op1 * op2);
    ELSIF operacao = 4 THEN
        IF op2 = 0 THEN
            resultado := 'Erro: divisão por zero!';
        ELSE
            resultado := op1 || ' / ' || op2 || ' = ' || (op1 / op2);
        END IF;
    ELSE
        resultado := 'Erro: operação inválida!';
    END IF;
    RETURN resultado;
END;
$$ LANGUAGE plpgsql;
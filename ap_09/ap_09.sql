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

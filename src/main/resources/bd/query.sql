USE f12014

SELECT c.codigo, c.pais, p.numero, p.nome, e.nome AS equipe, t.posicao, t.pontos
FROM corrida c, piloto p, equipe e, temporada t
WHERE c.codigo = t.codigo_corrida
	AND p.numero = t.numero_piloto
	AND p.equipe = e.codigo
	AND t.posicao != 0
	AND c.codigo = 2
ORDER BY posicao ASC

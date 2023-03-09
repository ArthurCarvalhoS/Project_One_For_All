SELECT 
  c.nome_cancoes AS cancao,
  COUNT(h.cancoes_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico_de_reproducao AS h
ON c.cancoes_id = h.cancoes_id
GROUP BY cancao, h.cancoes_id
ORDER BY reproducoes DESC, cancao LIMIT 2;
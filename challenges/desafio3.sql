SELECT 
  nome_pessoa_usuaria AS pessoa_usuaria,
  COUNT(h.cancoes_id) AS musicas_ouvidas,
  ROUND(SUM(c.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.pessoas_usuarias AS p
INNER JOIN SpotifyClone.historico_de_reproducao AS h
ON p.pessoa_usuaria_id = h.pessoa_usuaria_id
INNER JOIN SpotifyClone.cancoes AS c
ON c.cancoes_id = h.cancoes_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;
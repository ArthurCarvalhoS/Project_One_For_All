SELECT ar.nome_artista AS artista,
CASE
WHEN COUNT(cf.cancoes_id) > 4 THEN 'A'
WHEN COUNT(cf.cancoes_id) > 2 THEN 'B'
WHEN COUNT(cf.cancoes_id) >= 1 THEN 'C'
WHEN COUNT(cf.cancoes_id) < 1 THEN '-'
ELSE 'sem ranking'
END AS ranking
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON al.artista_id = ar.artista_id
INNER JOIN SpotifyClone.cancoes AS c
ON c.album_id = al.album_id
LEFT JOIN SpotifyClone.cancoes_favoritas AS cf
ON c.cancoes_id = cf.cancoes_id
GROUP BY artista
ORDER BY ranking = '-', ranking, artista;
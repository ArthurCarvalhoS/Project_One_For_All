SELECT
 a.nome_album AS album,
 COUNT(cf.cancoes_id) AS favoritadas
FROM SpotifyClone.albuns AS a
INNER JOIN SpotifyClone.cancoes AS c
ON c.album_id = a.album_id
INNER JOIN SpotifyClone.cancoes_favoritas AS cf
ON c.cancoes_id = cf.cancoes_id
GROUP BY album
ORDER BY favoritadas DESC, album LIMIT 3;
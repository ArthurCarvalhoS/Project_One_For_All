SELECT
ar.nome_artista AS artista,
al.nome_album AS album,
COUNT(s.artista_id) AS pessoas_seguidoras
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguidores AS s
ON ar.artista_id = s.artista_id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista, album;
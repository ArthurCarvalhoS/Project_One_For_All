SELECT
COUNT(h.pessoa_usuaria_id) AS musicas_no_historico
FROM SpotifyClone.historico_de_reproducao AS h
INNER JOIN SpotifyClone.pessoas_usuarias AS p
ON h.pessoa_usuaria_id = p.pessoa_usuaria_id
WHERE p.nome_pessoa_usuaria = 'Barbara Liskov'
GROUP BY h.pessoa_usuaria_id;
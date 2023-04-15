SELECT 
CASE
WHEN p.idade < 31 THEN 'Até 30 anos'
WHEN p.idade > 60 THEN 'Maior de 60 anos'
WHEN p.idade > 30 THEN 'Entre 31 e 60 anos'
END faixa_etaria,
COUNT(DISTINCT p.pessoa_usuaria_id) AS total_pessoas_usuarias,
COUNT(cf.cancoes_id) AS total_favoritadas
FROM SpotifyClone.pessoas_usuarias AS p
LEFT JOIN SpotifyClone.cancoes_favoritas AS cf
ON p.pessoa_usuaria_id = cf.pessoa_usuaria_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;
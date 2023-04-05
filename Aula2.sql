
select Pessoas.Nome, Pessoas.Bio, MeusAmigos.ID_Amigos as Amigos, MeusAmigos.Bloqueio, Comentarios.Comentario, Post.Postagem as Post, gostei.ID_Like as TipoDoLike, Likes.DscLike as Likes from Pessoas

inner join Amigos as MeusAmigos on Pessoas.ID = MeusAmigos.ID_Pessoas
inner join Resposta as Comentarios on Pessoas.ID = Comentarios.IdPostagem
inner join Postagens as Post on Pessoas.ID = Post.ID_Pessoa
inner join Like_Amigos as gostei on Pessoas.ID = gostei.ID_Amigo
inner join Likes as Likes on gostei.ID_Like = Likes.ID

select * from VW_Pedro
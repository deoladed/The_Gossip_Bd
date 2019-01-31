# Bienvenu dans The Gossip DataBase !
Ruby version : 2.5.1
Rails vers : 5.2.1
--------------------------------------
## Contenu
Oula.... 
> Des users, qui ont des villes (1 - N)
> Des potins, qui ont des users (1 - N), des comment (1 - N), des likes (1 - N + polmorphisme, ils peuvent liker un article OU un comment, mais pas mi l'un ni l'autre) et des tags (N - N).
> Des tags qui ont des potins (N - N).
> Des MP qui ont des user.sender et des user.retriver (1 - N + class_name).
> Et enfin, des bebes comments, qui comment les comment, mais en fait, c'est juste des comment polymorphics, le meme qu'au dessus, et qui peuvent commenter un potin OU un comment.

### Utilisation
Apres le *git clone*, faite biensur un *bundle install* si tu veux table_print et faker, puis un *rails db:seed* pour creer la DB =)


#### Courage jeune correcteur !
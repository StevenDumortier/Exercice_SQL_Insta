# Requête de création de la base de données / Requêtes de création de toutes les tables

- code classique, présent dans le sql.

# Requête d’ajout des utilisateurs, photos, commentaires et likes

- Modélisation sur ma part paint, création de 4 tableaux, création de plusieurs clés étrangères pour les couples de tableaux utilisateurs-likes  utilisateurs-images
utilisateurs-comments images-comments images-likes

- Création de données avec https://www.mockaroo.com/

- Pour les keys étrangers, s'assurer que les valeurs sont bien celle des primarys keys 

# Pour tous les commentaires, montrer le contenu et le username de l'auteur
# Pour chaque commentaire, afficher son contenu et l'url de la photo à laquel le commentaire a été ajouté
# Afficher l'url de chaque photo et le nom d'utilisateur de l'auteur
# Trouver tous les commentaires pour la photo d'id 3, avec le username de l'utilisateur qui a commenté
# Trouver tous les url des photos ainsi que tous les commentaire qui ont été posté par l'auteur de la photo
# A l'exercice précedent afficher aussi le nom de l'utilisateur qui a commenté ses propres photos

- Pour toutes ses requêtes, utilisation de selec
- En fonction de la requête join ou double join si plusieurs tableaux doivent être utilisés.

# Le nombre de likes pour la photo d’ID 4
- Alias avec utilisation de Count, une colonne du tableau likes à pour nom likes et permet de déposer un like si likes = 1 ou de ne pas déposer un likes=0
- Besoin des conditions likes = 1 et photos.id = 4


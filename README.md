# Script Git Branch Utility

Ce script Bash vous permet de gérer les branches Git de votre projet de manière simplifiée. Il prend en charge plusieurs opérations courantes telles que la création de branches, la suppression de branches locales et distantes, la fusion de branches, et bien plus encore.

## Utilisation

Pour utiliser ce script, exécutez-le depuis votre terminal avec les arguments appropriés. Voici comment vous pouvez l'utiliser :


    ./gitbranch.sh [option] [branche1] [branche2]

    [option] : L'option à exécuter (voir ci-dessous).
    [branche1] : Le nom de la première branche (le cas échéant).
    [branche2] : Le nom de la deuxième branche (le cas échéant).

Options prises en charge

    cc : Crée une nouvelle branche et passe automatiquement en mode de branchement.
    d : Supprime une branche locale.
    dr : Supprime une branche à la fois localement et à distance.
    chck : Passe à une branche spécifiée.
    m : Fusionne une branche spécifiée dans la branche actuelle.
    chckm : Passe à une branche spécifiée et fusionne une autre branche.
    chckmd : Passe à une branche spécifiée, fusionne une autre branche, puis supprime la branche fusionnée localement.
    chckmdr : Passe à une branche spécifiée, fusionne une autre branche, supprime la branche fusionnée localement et la supprime à distance.

Exemples d'utilisation

    Créez et basculez automatiquement vers une nouvelle branche :


./gitbranch.sh cc ma-nouvelle-branche

    Supprimez une branche locale :

./gitbranch.sh d ma-branche-a-supprimer

    Supprimez une branche locale et distante :


./gitbranch.sh dr ma-branche-a-supprimer

    Passez à une branche spécifique :


./gitbranch.sh chck ma-branche-cible

    Fusionnez une branche dans la branche actuelle :


./gitbranch.sh m ma-branche-a-fusionner

    Passez à une branche spécifique, puis fusionnez une autre branche :


./gitbranch.sh chckm ma-branche-cible ma-branche-a-fusionner

    Passez à une branche spécifique, fusionnez une autre branche, puis supprimez la branche fusionnée localement :


./gitbranch.sh chckmd ma-branche-cible ma-branche-a-fusionner

    Passez à une branche spécifique, fusionnez une autre branche, supprimez la branche fusionnée localement et la supprimez à distance :


./gitbranch.sh chckmdr ma-branche-cible ma-branche-a-fusionner

N'oubliez pas de donner les autorisations d'exécution au script avant de l'utiliser :



    chmod +x gitbranch.sh
Vous pouvez aussi crée un allias afin de simplifier encore plus la commande ( voir les readme de pérécdent script pour connaitre la procédure )

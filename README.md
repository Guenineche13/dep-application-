Dans ce projet, j’ai voulu apprendre à déployer une instance EC2 dans un VPC personnalisé (avec sous-réseaux publics et privés).
L’objectif était :

améliorer la sécurité en isolant mon instance  dans un sous-réseau privé,

tester la communication avec Internet via une NAT Gateway,

connecter mon instance avec AWS Systems Manager (SSM).

Ce projet m’a permis de comprendre comment une entreprise peut organiser son cloud pour être à la fois sécurisé et accessible.

Architecture mise en place

VPC avec 2 sous-réseaux :

1 sous-réseau public → contient une instance bastion et la NAT Gateway.

1 sous-réseau privé → contient l’instance  (EC2).

Internet Gateway pour que le public puisse accéder au VPC.

NAT Gateway pour que l’instance privée puisse aller sur Internet (par ex. télécharger des packages ou se connecter à ECR).

IAM Role attaché à l’instance EC2 pour utiliser SSM Agent (connexion via Session Manager).



Étapes réalisées

Création du VPC et des sous-réseaux.

Ajout des tables de routage (public avec Internet Gateway, privé avec NAT Gateway).

Déploiement de l’instance EC2 dans le sous-réseau privé.

Ajout d’une seconde instance dans le public pour servir de bastion et tester la communication.

Installation/activation de SSM Agent.

Connexion via AWS Session Manager sans mot de passe SSH.


 Problèmes rencontrés

SSM Agent instable : parfois il se connectait, parfois non.
Connexion interrompue → probablement liée au NAT Gateway ou à la résolution DNS.

J’ai préféré arrêter le projet ici et documenter les problèmes.


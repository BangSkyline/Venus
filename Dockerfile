# Utilise l'image officielle de Vault
FROM hashicorp/vault:1.16

# Crée les répertoires nécessaires
RUN mkdir -p /Vénus/config /Vénus/file /Vénus/CERTIFS

# Copie les fichiers de configuration
COPY config/* /Vault/config/

# Copie les données persistantes
COPY data/* /Vénus/data/

# Copie les certificats
COPY CERTIFS/* /Vénus/CERTIFS/

# Définit le point d'entrée par défaut
CMD ["vault", "server", "-config=/Vénus/config/vault.hcl"]

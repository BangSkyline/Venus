# Utilise l'image officielle de Vault
FROM hashicorp/vault:1.16

# Crée les répertoires nécessaires
RUN mkdir -p /vault/config /vault/file /vault/logs

# Copie le fichier de configuration vault.hcl
COPY config/vault.hcl /vault/config/vault.hcl

# Copie les fichiers de configuration
COPY config/* /vault/config/

# Copie les données persistantes
COPY data/* /vault/file/

# Définit le point d'entrée par défaut
CMD ["vault", "server", "-config=/vault/config/vault.hcl"]

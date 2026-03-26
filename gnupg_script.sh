uname -a /usr/bin/gpg #daba informacion del ordenador
wich gpg # ubicacion del binario de gpg
gpg --version #muestra la version
gpg --full-generate-key #para generar un par de llaves  
gpg --list-keys #lista las llaves
gpg --armor --export kevinalmache7@gmail.com > mi_llave_publica.asc #exportar a archivo y formato legible
gpg --list-secret-keys --keyid-format=long #para listar llaves privadas
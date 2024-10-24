#!/usr/bin/env bash
#
# Este script se encarga de invocar los tres programas que permiten la 
# conversion de un PNG a secuencia de pixeles, se procesan esos pixeles y
# posteriormente se convierte esa secuencia de pixeles a un archivo en formato
# PNG
#
# Autor: John Sanabria - john.sanabria@correounivalle.edu.co
# Fecha: 2024-08-22
#!/usr/bin/env bash

# Define la ruta absoluta a la carpeta de imágenes, asegurándote de usar comillas
#!/usr/bin/env bash

IMAGES=("image.png" "image1.png" "image2.png" "image3.png" "image4.png" "image5.png"
        "image6.png" "image7.png" "image8.png" "image9.png" "image10.png"
        "image11.png" "image12.png" "image13.png" "image14.png" "image15.png"
        "image16.png" "image17.png" "image18.png")

for IMG in "${IMAGES[@]}"
do
    INPUT_PNG="${IMG}"
    TEMP_FILE="${IMG%.png}.bin"
    python3 fromPNG2Bin.py ${INPUT_PNG}
    ./main ${TEMP_FILE}
    python3 fromBin2PNG.py ${TEMP_FILE}.new
done



#/bin/bash
#
#   Marcio Junior Vieira, Maio de 2018



#--- RENOMEIA ---#
for ARQUIVO in *."pdf"
do
   NOVO_NOME=$(basename "$ARQUIVO")
   echo $NOVO_NOME   
   convert -density 600  "$NOVO_NOME" -depth 8 -strip -background white -alpha off "$NOVO_NOME".tiff
   echo $NOVO_NOME   
   tesseract "$NOVO_NOME".tiff "$NOVO_NOME" -l por
done

#/bin/bash
#
#   Marcio Junior Vieira, Maio de 2018



#--- RENOMEIA ---#
for ARQUIVO in *."pdf"
do
   NOVO_NOME=$(basename "$ARQUIVO")
   echo "Iniciando corversão de documento " $NOVO_NOME " para formato TIFF"   
   convert -density 600  "$NOVO_NOME" -depth 8 -strip -background white -alpha off "$NOVO_NOME".tiff
   echo "Extração Textual de arquivo de IMAGEM TIFF " $NOVO_NOME " para formato TXT"   
   tesseract "$NOVO_NOME".tiff "$NOVO_NOME" -l por
   echo "Removendo arquivo TIFF " "$NOVO_NOME".tiff 
   rm "$NOVO_NOME".tiff   
done

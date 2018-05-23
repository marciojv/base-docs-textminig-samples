
# Base para Treinamento de Algoritimos de Identificação de Metadados de Documentos

  Text Mining 

# Legenda de Documentos por Categoria
- 0001 ate 0010 - Contratos de Serviços
- 0011 até 0020 - Contratos de Locação
- 0021 até 0025 - Contratos de Cooperação
- 0026 ate 0030 - Contratos de venda de Produtos/Equipamentos 
- 0031 ate 0035 - Leis Complementares
- 0036 ate 0039 - Leis
- 0040 ate 0045 - decretos
- 0046 até 0050 - Portarias


# Script 

 O Script /extrai-text.sh converte arquivos para extração Textual



# Nomenclatura dos arquivos 
 - .pdf - Arquivos Originais
 - .pdf.tiff - Arquivos Convertidos em Imagem ( simula escanneamento digital )
 - .pdf.txt - arquivos usados para Text Mining
 - .pdf.txt.meta - Metadados extraidos ( implementação a ser feita )
 



# Fontes dos Dados

 Portal da Transparência de Curitiba 
 - http://www.transparencia.curitiba.pr.gov.br/conteudo/contratos2015.aspx
 - http://www.transparencia.curitiba.pr.gov.br/conteudo/contratos2016.aspx

 
 Consulta On-Line da Legislação Municipal de Curitiba
 - http://legisladocexterno.curitiba.pr.gov.br/AtosConsultaExterna.aspx
 - http://www.curitiba.pr.gov.br/conteudo/smf-legislacao-municipal/104


# Extraindo Text

PDF para TIF 
 - convert -density 600 0001.pdf 0001.tiff
  ou 
 
 convert -density 600  0001.pdf -depth 8 -strip -background white -alpha off 0001.tiff

 - Convertendo para TXT

  tesseract 0001.tif 0001 -l por











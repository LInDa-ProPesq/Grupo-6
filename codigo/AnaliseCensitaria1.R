#graficos

# Carregando a biblioteca para leitura e gravação de planilhas Excel formato 'xlsx'
if (!require(readxl)) install.packages('readxl')
library(readxl)

# Lendo a planilha
df <- read_xlsx("C:/Users/Winy/Documents/GitHub/Grupo-6/dados/umses_graduacao_2018_vtidy.xlsx", sheet="dados")
# A função "head(df, 3)" mostra as três primeiras linhas trazidas para o data.frame de nome "df".
# O objetivo é o de fazer uma inspeção visual das colunas e verificar a importação correta dos dados.
head(df, 3)

# Seção I.Dados censitários
# Gênero
# 1.Prefiro não declarar
# 2.Masculino e 
# 3.Feminino
sexo=table(df$genero)
sexo
# A variável "lbls" define os rótulos mostrados na figura
lbls <- c("Masculino", "Feminino")
# A variável "pct" exibe em porcentagem
pct <- round(sexo/sum(sexo)*100, digits=1)
pct
# O primeiro gráfico a ser elaborado, será do tipo pizza (pie) para a variável "sexo".
# A variável "lbls" concatena os elementos (nomes) e os valores (em porcentagem)
lbls <- paste0(pct,"% ", lbls) # add percents to labels
lbls
png(filename="C:/Users/Winy/Documents/GitHub/Grupo-6/graficos/Genero.png", width = 800, height = 500, pointsize = 16)
# Definindo a cor de fundo do gráfico
par(bg = "bisque")
#
# Geração do gráfico tipo pizza (pie)
pie(sexo, labels = lbls, edges = 100, angle = 45, col = c("deepskyblue","darkviolet", "green3"), main = "Genero dos participantes")

# Não se esquecer de chamar a funcao "dev.off()" para fechar o arquivo gravado!
# Este comando "dev.off()" é utilzado em complemento com a funcao png (ou outras funcoes para gerar arquivos graficos)
dev.off()
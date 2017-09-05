# carga librerias
library(NLP)
library(RColorBrewer)
library(tm)
library(wordcloud)

# lee el documento UTF-8 y lo convierte a ASCII
txt <- readLines("ejercicios/data/defectos.txt", encoding = "UTF-8")
txt = iconv(txt, to = "ASCII//TRANSLIT")

# construye un corpus
corpus <- Corpus(VectorSource(txt))
inspect(corpus)

# lleva a minúsculas
d  <- tm_map(corpus, content_transformer(tolower))

# quita espacios en blanco
d  <- tm_map(d, stripWhitespace)

# remueve la puntuación
d <- tm_map(d, removePunctuation)

# carga mi archivo de palabras vacías personalizada y lo convierte a ASCII
sw <- readLines("omite.txt", encoding="UTF-8")
sw = iconv(sw, to = "ASCII//TRANSLIT")

# remueve palabras vacías genericas
d <- tm_map(d, removeWords, stopwords("spanish"))

# remueve palabras vacías personalizadas
d <- tm_map(d, removeWords, sw)

# crea matriz de terminos
tdm <- TermDocumentMatrix(d)

# frecuencia de palabras, mínima igual a 20
findFreqTerms(tdm, lowfreq = 50)

# filtrar palabras que se repitan mucho
d <- tm_map(d, removeWords, c("aplicativo","muestra", "error", "posible"))

tdm <- TermDocumentMatrix(d)

# cargar matriz y desplegar la frecuencia en una nube
m <- as.matrix(tdm)

v <- sort(rowSums(m), decreasing = TRUE)

df <- data.frame(word = names(v),freq = v)

wordcloud(df$word, df$freq, min.freq = 50)
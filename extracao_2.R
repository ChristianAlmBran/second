# extração cvs
ciclovias <- read.csv2("http://dados.recife.pe.gov.br/dataset/667cb4cf-fc93-4687-bb8f-431550eeb2db/resource/575613ac-9660-4210-989c-eed4255d400c/download/detalhamentocicloviario2022-08.csv")

# extração rjson
pacman::p_load(rjson)

DicionarioDadosReceita <- fromJSON(file="http://dados.recife.pe.gov.br/dataset/b0653677-2153-4085-829d-3f61540491eb/resource/7fb0ab90-92ad-45a5-927d-8e999c033561/download/metadados-receitas.json")

DicionarioDadosReceita <- as.data.frame(DicionarioDadosReceita)

# extraÃ§Ã£o excel

pacman::p_load(rio)

CensoEscolarRecife2020 <- rio::import('http://dados.recife.pe.gov.br/dataset/b5b2cfab-8c7c-4ad9-91f3-e500777a46fc/resource/cb5a01d0-6e6d-4b9a-9442-a97d9118f4ef/download/anexo-i-2016.xlsx')


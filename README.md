# PROJETO EDUCALIVROS

Grupo: 
- Gabriel Torres
- Isadora Xavier
- Marcelo Henrique
- Maria Eduarda Santana da Silva Barros
<br/><br/>

### - Modelo conceitual desenvolvido:
<img src = "https://github.com/isadoravrx/proj2_banco_de_dados/blob/main/screenshots/img_projeto_conceitual.png">

### - Modelo lógico desenvolvido:
<img src = "https://github.com/isadoravrx/proj2_banco_de_dados/blob/main/screenshots/img_projeto_logico.png">

### - Modelo físico desenvolvido: 
  - <a href = "https://github.com/isadoravrx/proj2_banco_de_dados/blob/main/projeto/projeto_fisico.sql">Arquivo com código DDL</a>
  - <a href = "https://github.com/isadoravrx/proj2_banco_de_dados/blob/main/projeto/script.sql">Arquivo com código DML</a>
<br/>

### - Apresentação do sistema

A escola EducaLivros oferece para os seus alunos os **modelos presencial e EAD**, serviços<br/>
de **consulta com profissionais da saúde** como, consultas com nutricionistas, psicólogos e<br/>
educadores físicos - que podem realizar consultas de avaliação física para alunos que<br/>
cursam disciplinas esportivas, por exemplo. Cada **disciplina** possui um tipo como, **teórica,<br/>
prática ou esportiva**. A equipe de professores conta com profissionais altamente<br/>
qualificados para lecionar no nosso ambiente.<br/><br/>
A escola terá um ambiente de convivência centralizado no espaço da **cantina**, com uma<br/>
diversidade de alimentos selecionados pela equipe de nutrição, que podem ser comprados<br/>
diretamente pelos alunos durante o horário de funcionamento. Além disso, a EducaLivros<br/>
contém o serviço de **transporte escolar**, oferecido para os bairros mais comuns entre os<br/>
alunos matriculados, oferecendo conforto e segurança no trajeto do aluno até a unidade<br/>
escolar. Além disso, uma importante característica da instuição, é que os alunos possuem aulas<br/>
conforme seu **segmento do novo ensino médio**.<br/><br/>
O diferencial desta instituição é o sistema inovador de livraria online contida no portal do<br/>
colegial, que oferece serviços de **venda** de obras literárias, **materiais de papelaria**,<br/>
**fardamento escolar** e a **promoção de eventos temáticos**, como palestras e debates. Os<br/>
eventos temáticos fazem parte do oferecimento da instituição em incentivar a construção do<br/>
pensamento crítico para os seus alunos, e são escolhidos a partir do **registro de avaliação**<br/>
que cada **aluno** – pode realizar sobre o livro, após a leitura. Assim, a obra melhor avaliada<br/>
do mês será utilizada como tema para debates, dinâmicas ou palestras. O debate ocorre em<br/>
salas, que podem ser salas virtuais ou em salas dentro da unidade escolar.<br/><br/>
A livraria estará disponível de forma online no portal do aluno para os alunos que desejarem<br/>
realizar a compra de livros, paradidáticos, materiais de papelaria ou fardamento, na própria<br/>
livraria da escola. Esse modelo foi desenvolvido para servir de facilitador e como um<br/>
recurso de acessibilidade para realizar o planejamento escolar, sem necessitar de logísticas<br/>
para a forma presencial.<br/><br/>
**EasterEgg** : Nesse ambiente o vendedor é responsável por operar a venda dos produtos<br/>
 disponíveis e por realizar o cadastro do aluno na plataforma, como suporte virtual ao <br/>
discente. **Cada aluno recebe um cupom com 15% de desconto, para ser abatido no valor da<br/>
mensalidade, quando a quantidade de livros comprados atinge determinado número estabelecido<br/>
pela livraria.** Dessa forma, a instituição reforça o estímulo e incentivo da construção<br/>
do pensamento crítico do aluno ao oferecer um benefício àqueles que possuem consumos<br/>
 literários significativos.<br/><br/>
Em casos de compra, os produtos podem oferecer o **serviço de entrega, retirada ou** <br/>
**download** na livraria, se desejável.<br/>
Os **livros** são organizados em **categorias**, de forma que cada livro pertence a uma<br/>
categoria e cada categoria pode conter muitos livros. Essa estruturação tem o objetivo de<br/>
promover o conforto do leitor que desejar identificar os livros em cada endereço de sessão<br/>
na plataforma, de acordo com a categoria área de conhecimento ou a categoria gênero<br/>
abordada no livro, por exemplo.<br/><br/>
Os **materiais de papelaria** são fabricados por um fornecedor parceiro e organizados em<br/>
**categorias**, de forma que cada produto pertence a uma categoria e cada categoria pode<br/>
conter muitos produtos. Essa estruturação tem o objetivo de promover o conforto para o<br/>
vendedor que desejar identificar os produtos em cada prateleira do estoque da livraria, de<br/>
acordo com a categoria. Assim, em caso de entregas por delivery, os produtos podem ser<br/>
facilmente identificados, encaixotados e enviados para a entrega, por exemplo.<br/>
No projeto desenvolvido, ainda, cada livro pode pertencer a 1 ou mais **autores**, e ser<br/>
disponibilizado nos **modelos: físico; e-book; audiobook e braille**, abrangendo<br/>
assiduamente os formatos com adaptações para acessibilidade do leitor.<br/><br/>

### - Perguntas que agregam valor

**Pergunta 1:** Quais os produtos mais comprados por cada cliente?<br/>
**Objetivo:** direcionar ações de marketing e promoções personalizada para cada cliente.<br/>
**Implementação da query**: <a href = "https://github.com/isadoravrx/proj2_banco_de_dados/blob/main/perguntas/pergunta1.sql">Query 1</a><br/><br/>
**Pergunta 2:** Qual o tipo de serviço mais registrado (entrega, retirada ou download)?<br/>
**Objetivo:** identificar a necessidade da contratação de novos entregadores ou motoboys, caso <br/>
delivery por entrega seja o mais recorrido pelos clientes.<br/>
**Implementação da query**: <a href = "https://github.com/isadoravrx/proj2_banco_de_dados/blob/main/perguntas/pergunta2.sql">Query 2</a><br/><br/>
**Pergunta 3:** Qual a quantidade de alunos cursando presencial e a quantidade de alunos<br/>
cursando EAD?<br/>
**Objetivo:** mapear a demanda de cursos em cada modalidade, para disponibilizar novas turmas<br/>
de acordo com a necessidade.<br/>
**Implementação da query**: <a href = "https://github.com/isadoravrx/proj2_banco_de_dados/blob/main/perguntas/pergunta3.sql">Query 3</a><br/><br/>
**Pergunta 4:** Quais responsáveis financeiros estão com pendências no status de pagamento<br/>
de seus dependentes?<br/>
**Objetivo:** reduzir a taxa de inadimplência ao identificar os responsáveis, e poder entrar em<br/>
contato.<br/>
**Implementação da query**: <a href = "https://github.com/isadoravrx/proj2_banco_de_dados/blob/main/perguntas/pergunta4.sql">Query 4</a><br/><br/>
**Pergunta 5:** Quais são os produtos mais vendidos?<br/>
**Objetivo:** útil para que o dono possa aumentar o estoque e o marketing relacionado ao produto.<br/>
**Implementação da query**: <a href = "https://github.com/isadoravrx/proj2_banco_de_dados/blob/main/perguntas/pergunta5.sql">Query 5</a><br/><br/>
**Pergunta 6:** Qual o valor médio de compra por cliente e por tipo de pagamento?<br/>
**Objetivo:** fazer promoções específicas para cada cliente, assim fidelizando eles, etc<br/>
**Implementação da query**: <a href = "https://github.com/isadoravrx/proj2_banco_de_dados/blob/main/perguntas/pergunta6.sql">Query 6</a><br/><br/>
**Pergunta 7:** Qual o bairro mais comum entre os alunos?<br/>
**Objetivo:** avaliar a demanda por novos ônibus de transporte para os bairros mais comuns entre<br/>
os discentes.<br/>
**Implementação da query**: <a href = "https://github.com/isadoravrx/proj2_banco_de_dados/blob/main/perguntas/pergunta7.sql">Query 7</a><br/><br/>

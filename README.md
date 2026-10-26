# EVdS-Banco-de-Dados

## Contextualização
A Escola Visconde de Sabugosa tem um problema em que os dados guardados no banco de dados não estão organizados, criando vários problemas relacionados à adição e procura de dados.

## Solução

Criar um sistema de gerenciamento de banco de dados (SGBD) relacional, que conecte as tabelas e faça com que a pesquisa de uma informação seja mais simples e prática. 

## Funcionamento

No banco de dados temos 7 tabelas:
1- Alunos: Contem as informações dos alunos, como o ID, nome e idade.  
2- Professores: contem o nome, ID e salário do professor.  
3- Salas: contêm o número da sala e quais matérias podem ser ensinadas nela.  
4- Materias: Contêm o ID da matéria e o tipo dela.  
5- Salas_Materias: Sincroniza as salas com as matérias que ela ensina sem poluir as respectivas tabelas.  
6- Turmas: Contem o nome da turma e quais alunos tem na mesma.  
7- Aulas: Contêm a informação de onde a aula acontecerá, turma, professor e horário.  
  
Todas elas se juntam para criar um sistema fácil e simples para adição e pesquisa.  


## Tutorial de Hosting em um serviço de Cloud

1- Acesse o painel do seu serviço de nuvem (Aiven ou Azure Database, neste caso).  
2. Tenha uma instância do banco de dados MySQL ou PostgreSQL.  
3. Configure as conexões (Host, Porta, Usuário e Senha).  
4. Utilize uma Workbench como DBeaver, pgAdmin ou MySQL Workbench para conectar-se ao servidor na nuvem.  
5. Execute os scripts relacionados ao seu banco de dados.  


## Como fazer um dump do banco

Vá para Server > Data Export, no menu escolha qual database você deseja fazer um dump e mude para a aba chamada Export Progress. Vá para o canto inferior direito e aperte o botão Start Export, após esperar, vá para onde você escolheu guardar sua dump e está feito.

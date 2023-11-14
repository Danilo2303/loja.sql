SELECT Pessoa.*, PessoaFisica.CPF
FROM Pessoa
JOIN PessoaFisica ON Pessoa.ID = PessoaFisica.PessoaID;

SELECT Pessoa.*, PessoaJuridica.CNPJ
FROM Pessoa
JOIN PessoaJuridica ON Pessoa.ID = PessoaJuridica.PessoaID;

SELECT Produto.Nome AS Produto, SUM(MovimentoVenda.Quantidade * MovimentoVenda.PrecoVendaAtual) AS ValorTotalSaidas
FROM MovimentoVenda
JOIN Produto ON MovimentoVenda.ProdutoID = Produto.ID
GROUP BY Produto.Nome;

SELECT Produto.Nome AS Produto, SUM(MovimentoVenda.Quantidade * MovimentoVenda.PrecoVendaAtual) AS ValorTotalSaidas
FROM MovimentoVenda
JOIN Produto ON MovimentoVenda.ProdutoID = Produto.ID
GROUP BY Produto.Nome;

SELECT Produto.Nome AS Produto, 
       SUM(MovimentoVenda.Quantidade * MovimentoVenda.PrecoVendaAtual) / SUM(MovimentoVenda.Quantidade) AS ValorMedioVenda
FROM MovimentoVenda
JOIN Produto ON MovimentoVenda.ProdutoID = Produto.ID
GROUP BY Produto.Nome;








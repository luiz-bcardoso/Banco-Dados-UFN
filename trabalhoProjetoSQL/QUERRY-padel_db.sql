show databases;
use padel_db;

show tables;

select * from jogador;
select * from torneio;
select * from jogador_torneio;

# Criando nova tabela depois de ja ter implementado
CREATE TABLE IF NOT EXISTS Ranking (
# Colunas
  `idRanking` INT NOT NULL AUTO_INCREMENT,
  `idJogador` INT NOT NULL,
  `pontos` INT NOT NULL,
# Chave primaria
  PRIMARY KEY (`idRanking`),
# Index de ordenação ( pontos maior - menor )  
  INDEX `Index` (`pontos` DESC) VISIBLE,
# Restrições da tabela ( não pode deletar ou atualizar o jogador )
  CONSTRAINT `fk_Ranking_Jogador`
    FOREIGN KEY (`idJogador`)
    REFERENCES `Jogador` (`idJogador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

# Alterando colunas ou a propria tabela
ALTER TABLE Ranking
ADD ano YEAR,
ADD INDEX `IndexAno` (ano DESC) VISIBLE;

select * from Ranking;

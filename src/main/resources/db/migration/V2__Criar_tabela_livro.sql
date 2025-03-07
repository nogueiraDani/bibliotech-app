CREATE TABLE Livro (id BIGINT PRIMARY KEY,
                                      titulo VARCHAR(255) NOT NULL,
                                                          autor VARCHAR(255) NOT NULL,
                                                                             isbn VARCHAR(255) NOT NULL,
                                                                                               preco DECIMAL(10,2) NOT NULL);
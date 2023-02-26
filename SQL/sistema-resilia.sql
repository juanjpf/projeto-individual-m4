
Table "Curso" {
  "nome" VARCHAR(255)
  "turno" VARCHAR(255)
  "inicio" INT
  "termino" INT
}

Table "Turmas" {
  "facilitadores" VARCHAR(255)
  "turno" VARCHAR(255)
  "alunos" VARCHAR(255)
}

Table "Facilitadores" {
  "nome" VARCHAR(255)
}

Table "Alunos" {
  "nome" VARCHAR(255)
  "idade" INT
  "endereco" VARCHAR(255)
}
Table "Endereco" {
  "cep" VARCHAR(255)
  "rua" VARCHAR(255)
  "bairro" VARCHAR(255)
  "UF" INT [pk]

}

Ref:"Curso"."Turno" < "Turmas"."Turno"
Ref:"Curso"."nome" < "Turmas"."Facilitadores"

Ref:"Alunos"."nome" < "Turmas"."Alunos"

Ref:"Facilitadores"."nome" < "Turmas"."Facilitadores"
Ref:"Facilitadores"."nome" < "Curso"."nome"


Ref:"Alunos"."endereco" < "Endereco"."cep"

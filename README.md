# Implementação das instruções porcentagem e potência em simulador
O objetivo do projeto é complementar um simulador com novas funções matemáticas.
Este projeto foi realizado na disciplina **SCC0902- Organização e Arquitetura de Computadores** para fins educacionais.

Link da apresentação: https://drive.google.com/drive/folders/1EmUfh_bPj2l_n2I_FT1Aszvgh8Z_tpeF

## Função Porcentagem
Sua implementação é essencial em finanças, estatísticas e análises, proporcionando uma maneira eficaz de representar e comparar partes relativas em diferentes contextos, desde descontos comerciais até variações percentuais em dados estatísticos.

## Função Potência
Essa operação é fundamental em diversos contextos, como cálculos matemáticos avançados, modelagem científica e programação, desempenhando um papel crucial em algoritmos e formulações matemáticas complexas.

## Como Rodar

```bash
    # Gerando o montador
    $ cd Install_Packages/Simulador_Linux/montador_fonte
    $ gcc *.c -o montador
    # Mova o arquivo gerado montador.o para o diretorio em que está seu código assembly (Install_Packages/Simulador_Linux/Exemplos)
```

```bash
    # Montando código assembly (Aritm.asm)
    $ cd Install_Packages/Simulador_Linux/Exemplos
    $ ./montador Aritm.asm cpuram.mif
    # Mova o arquivo gerado cpuram.mif para o diretorio em que está o simple simulator (Simple_Simulator)
```

```bash
    # Rodando simulador
    $ cd Simple_Simulator
    $ gcc simple_simulator_template.c -O3 -march=native -o simulador -Wall -lm
    $ ./simulador
```

## Autores
- Agnes Bressan de Almeida - 13677100
- Carolina Elias de Almeida Américo - 13676687
- Caroline Severiano Clapis - 13861923
- Rauany Martinez Secci - 13721217
- Rhayna Christiani Vasconcelos Marques Casado - 13676429

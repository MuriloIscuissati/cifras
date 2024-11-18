programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u
	
	caracter alfabeto[26] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q','R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'}
	funcao inicio()
	{
		descriptografar("dtcukn", 2)
	}

	funcao criptografar (cadeia frase, inteiro chave){
		
		frase = t.caixa_alta(frase)
		
		inteiro numeroLetras = t.numero_caracteres(frase)


	para(inteiro i=0; i < numeroLetras; i++){

		caracter letra = t.obter_caracter(frase, i)

		para(inteiro j = 0; j < 26; j++){

			se(letra == alfabeto[j]){

				inteiro posicaoCriptografada = j + chave

				posicaoCriptografada = posicaoCriptografada % 26

				escreva(alfabeto[posicaoCriptografada])
				pare
			}
		}
		//se(espaco == verdadeiro){
			//escreva(" ")
	}

			
	}

	funcao descriptografar(cadeia frase, inteiro chave){

		frase = t.caixa_alta(frase)
		
		inteiro numeroLetras = t.numero_caracteres(frase)

		para(inteiro i = 0; i < numeroLetras; i++){

			caracter letra = t.obter_caracter(frase, i)

			para(inteiro j = 0; j< 26; j++){

				se(letra == alfabeto[j]){

					inteiro posicaoDescriptografada = j - chave

					se(posicaoDescriptografada < 0){
						posicaoDescriptografada += 26
					}

					escreva(alfabeto[posicaoDescriptografada])
					pare
			}
			
		}
	}
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1322; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
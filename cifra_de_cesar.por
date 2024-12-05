programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Util --> u
	
	caracter alfabeto[26] = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q','R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'}
	funcao inicio()
	{
		todas_possibilidades("Whstlpyhz")
	}

	funcao criptografar (cadeia frase, inteiro chave){
		
		frase = t.caixa_alta(frase)
		
		inteiro numeroLetras = t.numero_caracteres(frase)


	para(inteiro i=0; i < numeroLetras; i++){

		logico espaco = verdadeiro
		caracter letra = t.obter_caracter(frase, i)

		para(inteiro j = 0; j < 26; j++){

			se(letra == alfabeto[j]){

				inteiro posicaoCriptografada = j + chave

				posicaoCriptografada = posicaoCriptografada % 26

				escreva(alfabeto[posicaoCriptografada])
				espaco = falso
				pare
			}
		}
		se(espaco == verdadeiro){
			escreva(" ")
		}
	}

			
	}

	funcao descriptografar(cadeia frase, inteiro chave){

		frase = t.caixa_alta(frase)
		
		inteiro numeroLetras = t.numero_caracteres(frase)

		para(inteiro i = 0; i < numeroLetras; i++){

			logico espaco = verdadeiro
			caracter letra = t.obter_caracter(frase, i)

			para(inteiro j = 0; j< 26; j++){

				se(letra == alfabeto[j]){

					inteiro posicaoDescriptografada = j - chave

					se(posicaoDescriptografada < 0){
						posicaoDescriptografada += 26
					}

					escreva(alfabeto[posicaoDescriptografada])
					espaco = falso
					pare
			}

			
			}
			
			se(espaco == verdadeiro){
				escreva(" ")
		}
		
		
	}

	
}

	funcao todas_possibilidades(cadeia frase){

		frase = t.caixa_alta(frase)

		inteiro numeroLetras = t.numero_caracteres(frase)

		para(inteiro i = 0; i < 26; i++){
			
			escreva("Possibilidade ", i, ": ")
			
			para(inteiro j = 0; j < numeroLetras; j++){

			logico espaco = verdadeiro
			caracter letra = t.obter_caracter(frase, j)

			para(inteiro k = 0; k < 26; k++){

				se(letra == alfabeto[k]){

					inteiro posicaoDescriptografada = k - i

					se(posicaoDescriptografada < 0){
						posicaoDescriptografada += 26
					}

					
					escreva(alfabeto[posicaoDescriptografada])
					espaco = falso
					pare
			}

			
			}
			
			se(espaco == verdadeiro){
				escreva(" ")
		}
		
		
	}
		escreva("\n")
		}
	}
}

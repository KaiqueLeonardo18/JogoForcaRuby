def avisa_chute_efetuado(chute)
	puts "Voce ja chutou #{chute}"
end

def avisa_letra_nao_encontrada
	puts "Letra nao encontrada"
end

def avisa_letra_encontrada(total_encontrado)
	puts "Letra encontrada #{total_encontrado} vezes"
end

def avisa_acertou_palavra
	puts "Parabens! Acertou"
end

def avisa_errou_palavra
	puts "Que pena... errou"
end

def avisa_pontos pontos_ate_agora
	puts "Voce ganhou #{pontos_ate_agora} pontos."
end

def da_boas_vindas
	puts "/******************/"
	puts "bem vindo ao jogo da forca"
	puts "/******************/"
	puts "Qual seu nome?"
	nome = gets.strip
	puts "\n\n\n\n"
	puts "comecaremos o jogo para voce, #{nome}."
	nome
end

def desenha_forca(erros)
	cabeca = "   "
	bracos = "   "
	pernas = "   "
	corpo = " "
	if erros >= 1
		cabeca = "(_)"
	end
	if erros >= 2
		bracos = "|"
		corpo = "|"
	end

	if erros >= 3
		bracos = "\\|/"
	end
	if erros >4
		pernas = "/ \\"
	end

	puts "________          \n"
	puts "|/      |         \n"
	puts "|       #{cabeca}    \n"
	puts "|       #{bracos}    \n"
	puts "|       #{corpo}           \n"
	puts "|       #{pernas}       \n"
	puts "|                 \n"
	puts "|                 \n"
	puts "_|__              \n"
	puts "\n\n"
end

def nao_quer_jogar?
	puts "Deseja jogar novamente? (S/N)"
	quero_jogar = gets.strip
	nao_quero_jogar = quero_jogar.upcase == "N"
end

def cabecalho_de_tentativa(chutes, erros, mascara)
	puts "\n\n\n"
	desenha_forca erros
	puts "Palavra secreta #{mascara}"
	puts "Erros ate agora #{erros}"
	puts "Chutes ate agora #{chutes}"
end

def pede_um_chute
	chute = gets.strip.downcase
	puts "Sera que acertou? voce chutou #{chute}"
	chute
end

def avisa_escolhendo_palavra
	puts "Escolhendo palavra secreta..."
end

def avisa_palavra_escolhida(palavra_secreta)
	puts "Palavra secreta com #{palavra_secreta.size} letras"
	palavra_secreta
end

def avisa_pontos_totais(pontos_totais)
	puts "Voce possui #{pontos_totais}"
end

def avisa_campeao_atual(dados)
	puts "Nosso campeao atual é #{dados[0]} com #{dados[1]} pontos"
end
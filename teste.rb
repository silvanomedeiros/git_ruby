 class Pessoa
	def initialize(nome)
		@nome = nome
	end

	def nome
		@nome
	end

	def nome=(nome)
		@nome = nome
	end
end

pessoa = Pessoa.new('Teste')
puts pessoa.nome
pessoa.nome = 'Texto'
puts pessoa.nome
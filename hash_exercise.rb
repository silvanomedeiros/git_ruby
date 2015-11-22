company = {
	mat_001: {name: "Mu", cpf: "12345678901", birth_date: "1986-03-27", admission: "2005-01-01"},
	mat_002: {name: "Aldebaran", cpf: "12345678902", birth_date: "1986-05-08", admission: "2002-10-04"},
	mat_003: {name: "Saga", cpf: "12345678903", birth_date: "1978-05-30", admission: "1999-03-29"},
	mat_004: {name: "Deathmask", cpf: "12345678904", birth_date: "1983-06-24", admission: "2002-07-15"},
	mat_005: {name: "Aioria", cpf: "12345678905", birth_date: "1986-08-16", admission: "2001-06-23"},
	mat_006: {name: "Shaka", cpf: "12345678906", birth_date: "1986-09-19", admission: "2004-08-12"},
	mat_007: {name: "Dohko", cpf: "12345678907", birth_date: "1975-10-20", admission: "2002-02-02"},
	mat_008: {name: "Milo", cpf: "12345678908", birth_date: "1986-11-09", admission: "2004-12-13"},
	mat_009: {name: "Aioros", cpf: "12345678909", birth_date: "1979-11-30", admission: "2000-01-30"},
	mat_010: {name: "Shura", cpf: "12345678910", birth_date: "1983-01-12", admission: "2000-07-11"},
	mat_011: {name: "Camus", cpf: "12345678911", birth_date: "1986-02-07", admission: "2001-09-11"},
	mat_012: {name: "Afrodite", cpf: "12345678912", birth_date: "1984-03-10", admission: "2003-03-30"}
}

def calc_age(birth_date)
	require 'active_support/all'
	begin
		birth_date = Date.parse(birth_date)
		age = Date.today.year - birth_date.year
		age -= 1 if birth_date > Date.today.years_ago(age)
		age
	rescue Exception => e
		e
	end			
end
# puts age(company[:mat_003][:birth_date])
puts "============================"
puts "Relatório em ordem alfabética"
puts "============================"
relatorio_ordem_alfabetica = company.sort_by {|k,v| v[:name]}
relatorio_ordem_alfabetica.each {|k,v| puts "Name: #{v[:name]}"}
puts ""
puts "============================"
puts "Relatório em ordem de Idade"
puts "============================"
relatorio_ordem_idade = company.sort_by {|k,v| v[:birth_date]}.reverse
relatorio_ordem_idade.each do |k,v|
	age = calc_age(v[:birth_date])
	puts "Name: #{v[:name]}, Birth Date: #{v[:birth_date]}, Age: #{age}"
end
puts ""
puts "======================================"
puts "Relatório em ordem de data de admissão"
puts "======================================"
relatorio_ordem_admissao = company.sort_by {|k,v| v[:admission]}
relatorio_ordem_admissao.each do |k,v|
	puts "Name: #{v[:name]}, CPF: #{v[:cpf]}, Admission: #{v[:admission]}"
end
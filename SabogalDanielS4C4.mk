resultados.pdf : resultados.tex plot1.pdf plot.pdf
	pdflatex resultados.tex
plot.pdf : datos.dat plotdatos.py
	python plotdatos.py
plot1.pdf : datos1.dat plotdatos1.py
	python plotdatos1.py
datos.dat : makedatos.py
	python makedatos.py > datos.dat
datos1.dat : makedatos1.py
	python makedatos1.py > datos1.dat


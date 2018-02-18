
# NOTE: to install the fonts, copy them to /usr

all: randopt plotify paperify

install:
	sudo mkdir /usr/share/fonts/opentype/gill-sans-std
	sudo cp fonts/* /usr/share/fonts/opentype/gill-sans-std/
	sudo fc-cache -f -v
view:
	evince randopt.pdf &
	evince plotify.pdf &
	evince paperify.pdf &

randopt:
	xelatex randopt.tex
	rm randopt.aux
	rm randopt.log

paperify:
	xelatex paperify.tex
	rm paperify.aux
	rm paperify.log

plotify:
	xelatex plotify.tex
	rm plotify.aux
	rm plotify.log

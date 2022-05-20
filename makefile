README.md:
	echo "#The Unix Workbench Guessing Game" > README.md
	echo "" >> README.md
	echo "make was run $$(date)" >> README.md
	echo "guessinggame.sh has $$(wc -l guessinggame.sh) lines of code" >> README.md

clean:
	rm README.md

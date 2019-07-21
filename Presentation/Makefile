all: Slides.pdf

Slides.pdf: $(shell find . -name "*.md")
	pandoc-compose

clean:
	trash-put out/*

.PHONY: all clean

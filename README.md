# TeX Live

## Usage

Example usage:

    docker run -it -w '/mnt' -v `pwd`:/mnt joschi/texlive-debian /bin/bash -c 'pdflatex my-document.tex'

## Build

    make build

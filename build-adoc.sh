#!/bin/bash

cd adoc || exit
bundle exec asciidoctor ./*.adoc -D ../out
cd ..

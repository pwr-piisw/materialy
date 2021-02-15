#!/bin/bash

pwd
ls -al
cd adoc || exit
bundle exec asciidoctor ./*.adoc -D ../out-adoc
cd ..

#!/bin/bash

pwd
ls -al
cd adoc || exit
bundle exec asciidoctor -D ../out-adoc index.adoc laboratorium.adoc
cd ..

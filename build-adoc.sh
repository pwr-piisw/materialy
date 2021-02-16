#!/bin/bash

pwd
ls -al
cd adoc || exit
bundle exec asciidoctor -D ../out-adoc index.adoc laboratorium.adoc 5_angular.adoc 6_reactive.adoc 7_cloud.adoc
cd ..

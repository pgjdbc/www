#!/bin/sh

cvs update
rm pgjdbc/org/postgresql/translation/*
cd pgjdbc && ant clean && cd ..
cd pgjdbc && cvs update && cd ..
cd pgjdbc && ./update-translations.sh && cd ..
mkdir src/documentation/content/xdocs/development/po
for i in pgjdbc/org/postgresql/translation/*.po; do echo $i; msgfmt -c -v -o /dev/null $i; done 2>&1 | perl scripts/generatePoStatus.pl > src/documentation/content/xdocs/development/po/status.xml
cd pgjdbc && ant publicapi privateapi doc && cd ..
forrest
cp -r pgjdbc/build/publicapi build/site/documentation
cp -r pgjdbc/build/privateapi build/site/development
cp pgjdbc/org/postgresql/translation/messages.pot pgjdbc/org/postgresql/translation/*.po build/site/development/po
mkdir build/site/documentation/80
cp pgjdbc/build/doc/*.html build/site/documentation/80


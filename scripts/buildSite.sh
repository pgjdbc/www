#!/bin/sh

# This script is what it takes to build the website with stuff that comes
# from the source tree (documentation, translations, and javadoc)
# It requires two versions of the source tree checked out into
# pgjdbc-head and pgjdbc-80 subdirectories.

cvs update

#cvs doesn't let us change permissions after the fact
chmod +x scripts/generatePoStatus.pl

for version in 80 head
do
	dir=pgjdbc-$version
	rm $dir/org/postgresql/translation/*
	cd $dir && ant clean && cd ..
	cd $dir && cvs update && cd ..
	cd $dir && ./update-translations.sh && cd ..
	mkdir src/documentation/content/xdocs/development/po

	for i in $dir/org/postgresql/translation/*.po
	do
		echo $i
		msgfmt -c -v -o /dev/null $i
	done > translation.stats 2>&1
	./scripts/generatePoStatus.pl translation.stats $version > src/documentation/content/xdocs/development/po/$version
	rm translation.stats

	for po in $dir/org/postgresql/translation/*.po
	do
		base=`basename $po .po`
		cp $po build/site/development/po/$version-$base.po
	done

	cp $dir/org/postgresql/translation/messages.pot build/site/development/po/$version-messages.pot
	cd $dir && ant publicapi privateapi doc && cd ..

	mkdir build/site/documentation/$version
	cp $dir/build/doc/*.html build/site/documentation/$version
	mv $dir/build/doc postgresql-jdbc-$version-doc
	tar -czf build/site/documentation/postgresql-jdbc-$version-doc.tar.gz postgresql-jdbc-$version-doc
	rm -rf postgresql-jdbc-$version-doc

done

cd src/documentation/content/xdocs/development/po && cat top head 80 bottom > status.xml && cd ../../../../../..

forrest

cp -r pgjdbc-head/build/publicapi build/site/documentation
cp -r pgjdbc-head/build/privateapi build/site/development


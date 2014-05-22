#! /bin/sh
# Set the home if not already set.
if [ "${KAQAZ_SRC_PATH}" = "" ]; then
    KAQAZ_SRC_PATH="`echo $0 | grep ^/`"
    if [ "$KAQAZ_SRC_PATH" = "" ]; then
	KAQAZ_SRC_PATH="$PWD"/"$0"
    fi
    cd `dirname $KAQAZ_SRC_PATH`
    KAQAZ_SRC_PATH=$PWD
    cd -
fi

cd $KAQAZ_SRC_PATH
OUTPUT="`find -name '*.h' -type f` `find -name '*.cpp' -type f` `find -name '*.c' -type f` `find -name '*.ui' -type f` `find -name '*.qrc' -type f` `find -name '*.pro' -type f` `find -name '*.qml' -type f` `find -name '*.py' -type f` `find -name '*.java' -type f` `find -name '*.js' -type f` `find -name '*.html' -type f` `find -name '*.ts' -type f` "

wc -mwl $OUTPUT
echo "  in the "`echo $OUTPUT | wc -w`" Files"

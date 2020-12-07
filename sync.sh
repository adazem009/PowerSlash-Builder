### You can add your own dependencies here ###
# Example: git clone --single-branch --branch <branch> <URL to your repository> <path>
# $SRC is the PowerSlash-Builder source tree path.
SRC="$(dirname $BASH_SOURCE)"
if ! [ -d "${SRC}/build" ]; then
  mkdir "${SRC}/build"
fi

# Required dependencies - do NOT remove them!
git clone https://github.com/adazem009/PowerSlash "$SRC/PowerSlash"
git clone https://github.com/adazem009/FSSC-Builder "$SRC/FSSC-Builder"
rm "$SRC/build/FSSC-Builder/project.conf"
rm -rf "$SRC/build/FSSC-Builder/config"
rm -rf "$SRC/build/FSSC-Builder/content"
cp $SRC/project.conf "$SRC/build/FSSC-Builder/project.conf"
cp -r $SRC/config "$SRC/build/FSSC-Builder/config"
mkdir "$SRC/build/FSSC-Builder/content"

# Custom dependencies

cd /dokumente/import
find ./ -iname '*.md' -type f -exec sh -c 'pandoc ${0} -o /dokumente/export/${0%.md}-$(date "+%Y%m%d").pdf' {} \;
pandoc *.md -o /dokumente/export/ONI_Dokumente-$(date "+%Y%m%d").pdf

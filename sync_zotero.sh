echo "Dry run local to onedrive"
# dry run sync local to onedrive
rsync -anv ~/Desktop/zotero_pdfs/  ~/Desktop/onedrive/Zotero\ PDFs
read -p "Starting syncing local to onedrive for REAL, Are you sure? y/n" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rsync -av ~/Desktop/zotero_pdfs/  ~/Desktop/onedrive/Zotero\ PDFs
fi

echo -e "\n\n"
echo "-------------------------"
echo -e "\n\n"

echo "Dry run onedrive to local"
# dry run sync onedrive to local 
rsync -anv ~/Desktop/onedrive/Zotero\ PDFs/ ~/Desktop/zotero_pdfs
read -p "Starting syncing onedrive to local for REAL, Are you sure? y/n" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    rsync -av ~/Desktop/onedrive/Zotero\ PDFs/ ~/Desktop/zotero_pdfs
fi
echo -e "\n\n"
echo "-------------------------"
echo -e "\n\n"
echo "Everything completed. Bye"
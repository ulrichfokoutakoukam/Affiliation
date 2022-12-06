
# function to copy from source to buid folder
function copyDirectory(){
  folderSrc=$1
  dest=$2
  echo "a $folderSrc"
  echo "b $1"
  echo "dest $dest"

  echo "start copy *****************"
  cp -R $folderSrc $dest$folderSrc
  echo "end copy***************"

}



# create build folder if not exist
echo "create Build folder"
$BuildFolderName="BuildFolder"

if exist %BuildFolderName% echo "Folder  exist" 

if not exist %BuildFolderName% echo "Folder does not exist" 
md  $BuildFolderName >nul 2>&1

# copy folders
echo "copy folders ***********************"
for directory in (
   \ThirdParty
   \src\assets
) do (
  echo "ss $directory"
  copyDirectory $directory $BuildFolderName%
)
done















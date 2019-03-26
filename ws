#!/bin/sh

# CONST
CLASS="PF1" 
RNOW=$(date +x"%x %r %Z")

#Config
CURR_CLASS="PF1"
HOME_DIR="ejmason"

# Checking to make sure that commands will work with the CURR_Class env
envCheck(){
    if [ $CURR_CLASS == "" ]; then
        echo "Please edit ~/bin/ws and add a value to CURR_CLASS. This Will be the current /home/<user>/CURR_CLASS/..."
        return;
    fi

    # check if  doesnt exist, ! -d..
    if [ -d "$DIRECTORY" ]; then
        echo 'exists'
    fi

}
createWorkspace(){
    '''
        createWorkspace(className
        className = $1
         
    '''
     TODO make this setup a class-->lab/working&finished
     class-->projects/finished&working
     make a git init and sync to my github
    
     if [ -d "/home/${CURR_CLASS}" ]; then
        echo "Please Edit bin script and change CURR_CLASS, workspace already setup"
    fi
    baseDir = "/home/${HOME_DIR}/"
    #create workspace directory
    mkdir /home/$HOME_DIR/lab/archived
    mkdir /home/$HOME_DIR/$PASSEDVAR/



 }
if [ "$1" = "?" ]; then
    echo "######################"
    echo "# Elliot Mason       #"
    echo "# ejmason@uark.edu   #"
    echo "# 01/25/18           #"
    echo "######################"
echo ">>>>>>>>>>>>>>>>>>>
Elliot Mason
ejmason@uark.edu
012518
<<<<<<<<<<<<<<<<<<<

ws -init CLASS_NAME -p PROJECT_NAME -l LAB_NAME

    Run command with either the p or the l flags to create a new main with the name supplied in
    either the -pROJECTS dir or in the -lAB dir.

    If no name is supplied the name will just be 'main.cpp'

    The new file will be from a copy of a skeleton file you must define in the script config ~/bin/ws

    -- CLASS_NAME/
    -- /lab
        --/archived/
        --/working/LAB_NAME
    -- /projects/
        --/archived
        --/working/PROJECT_NAME

ws -lw,la || -pw,pa
    -l : lab workspace
    -p : project workspace
    -w : working dir
    -a : archived dir

    Will cd to your directory in accordance with:

    ws -lw
        Lab Working dir
    ws -la
        Lab Archive Dir
    ws -pw
        Project Working
    ws -pa
        Project Archive

ws -arc MAIN_NAME.cpp
    Moves the supplied file to the archived dir
    'mv MAIN_NAME.cpp ../archived/'

ws compile FILE_NAME.cpp --> RETURNS and RUNS a file 'run'
"
fi # end of 'ws ?' check

    # exapmle ws lab w - brings you to workspace lab working
    # example ws dev - current working directory /class/projects/working
    # example ws arc - archived projeccts /class/projects/archive

    # Included binaries
    # compile
        # compile main.cpp
        # compile main
        # TODO look up other ways to 

    

#add a time counter?
echo $1
echo $2
usage()
{
    echo "see ws or ws -h for more"
}

setupENV(){
    # test if files exist, and if input was valid
    mkdir -p ~/${2}/lab/archive 
    mkdir -p ~/${2}/lab/working 
    mkdir -p ~/${2}/projects/archive 
    mkdir -p ~/${2}/projects/working 
    
}

envCheck()

while [ "$1" != "" ]; do
    case $1 in
        -la | -labArchive )                  cd ~/$CURR_CLASS/lab/archive/;;
        -lw | -labWork )                     cd ~/$CURR_CLASS/lab/working/;;
        -pa | -projectArchivce )             cd ~/$CURR_CLASS/projects/archive;;
        -pw | -projectWork )                 cd ~/$CURR_CLASS/projects/working;;
        -arc | --archive )                   mv ./${2} ../archive/;;
        -init | -initialize )                setupENV;;
        -f | --file )           shift
                                filename=$1
                                ;;
        -i | --interactive )    interactive=1
                                ;;
        -h | --help )           usage
                                exit
                                ;;
        * )                     usage
                                exit 1
    esac
    shift
done




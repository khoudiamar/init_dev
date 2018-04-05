#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>


#define NOT_SPECIFIED 100

#define LANGUAGE_C 0
#define LANGUAGE_CPP 2
#define LANGUAGE_PYTHON 3
#define LANGUAGE_LATEX 4
#define LANGUAGE_BEAMER 5

#define LICENSE_GPL 1
#define LICENSE_MIT 0




int nbr_arguments;
char** arguments;

char const * languages[] 	= {"-C","-CPP","-C++","-Py","-Latex","-BEAMER"}	;int N_LANGUAGES = 6; // must be correct !
char const * licences[] 	= {"-MIT","-GPL"}								;int N_LICENCES  = 2; // must be correct !
char const * parmeteters[]  = {"-git", "-help"}								;int N_PARAMS    = 2; // must be correct !

char const * message = ""; // en cas d'erruer , affiche moi
char const * project_name = "";
int   language = NOT_SPECIFIED;
int   licence  = NOT_SPECIFIED;

int   git_is_chosen  = 0; // default = false
int   help_is_chosen = 0; // default = false
*/

void showHelp(){
	printf("help : ...\n");
}

int params_are_correct(){
	
	if (nbr_arguments < 2)
	{
		message = strdup("\nExpected arguments, please check the help : initdev –help\n");
		return 0;
	}

	if(strcasecmp(arguments[1],"-help") == 0){ // dans le cas : initdev -help
		help_is_chosen = 1;
		return 1;
	}
	else{
		project_name = arguments[1];
	}
	

	for (int i = 2; i < nbr_arguments;i++)
	{
		if(!argument_is_language(arguments[i])){
			if(!argument_is_license(arguments[i])){
				if(!argument_is_parm(arguments[i])){
					message = strdup("\nUknown arguments, please check the help : initdev –help\n");
					return 0;
				}
			}
		}
	}

	
	if(language == NOT_SPECIFIED && git_is_chosen){
		message = strdup("\nYou must set project type, please check the help : initdev –help\n");
		return 0;
	}

	
	return 1;
}



int main(int argc, char * argv[])
{
	
	nbr_arguments = argc;
	arguments = argv;

	if(params_are_correct()){

		if(help_is_chosen){
			showHelp();
			return 0;
		}

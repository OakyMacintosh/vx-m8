#include <6502.h>

union {
  int command;
}

void
print_ready()
{
   printf("READY.\n");
}

void
print_help()
{
   printf("VX-M8 ROM help.\n");
   printf("---------------\n");
   printf(",h		Print this.\n");
   printf("print [arg]  Print arg[0]\n");
   printf("load  [arg]  Load something from addr\n");
   return 0;
}

void
get_command() 
{
   if (command == "print") {
     printf("var[0]?: \n");
     ask_in();
     parse_in();
   } else if (command == ",h") {
       print_help();
   } else if (command == "load") {
       printf("(core dumped)");
       return 1;
   } else {
       printf("Sorry, but i did't understand.");
       return 1;
   }
}


void
ask_in();

void
parse_in();


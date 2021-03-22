#include <stdio.h>

int main()
{

    char characterName[] = "Jamal";
    int characterAge = 16;

    // ! %s is used to insert strings into ""
    // ! %d is used for inserting numbers into ""

    printf("Hello, %s!\n", characterName);
    printf("%s, is learning c - lang.\n", characterName);
    printf("Its an interesting language!\n");
    printf("%s is %d years old when hes learning C.\n", characterName, characterAge);
    characterAge = 26;
    printf("When %s is %d he will be a coding master!", characterName, characterAge);

    return 0;
}
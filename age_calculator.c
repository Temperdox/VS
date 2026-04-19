#include <stdio.h>
#include <time.h>
#include <string.h>

void get_age_message(int age, char *message) {
    if (age < 30) {
        strcpy(message, "You are young!");
    } else if (age >= 30 && age < 67) {
        strcpy(message, "You are middle-aged.");
    } else if (age >= 67 && age <= 80) {
        strcpy(message, "You are aging and should travel the world!");
    } else {
        strcpy(message, "You should relax and enjoy your life!");
    }
}

int main() {
    char name[100];
    int birth_year;
    char run_again[10];
    char message[100];

    do {
        time_t t = time(NULL);
        struct tm *tm_info = localtime(&t);
        int current_year = tm_info->tm_year + 1900;

        printf("\n========================================\n");
        printf("   Welcome to the Age Calculator!\n");
        printf("========================================\n\n");

        printf("Please enter your name: ");
        scanf("%s", name);

        printf("Please enter your year of birth: ");
        scanf("%d", &birth_year);

        int age = current_year - birth_year;

        get_age_message(age, message);

        printf("\n----------------------------------------\n");
        printf("Hello, %s!\n", name);
        printf("You are %d years old.\n", age);
        printf("%s\n", message);
        printf("----------------------------------------\n\n");
        
        printf("Would you like to run the program again? (yes/no): ");
        scanf("%s", run_again);

    } while (strcmp(run_again, "yes") == 0 || strcmp(run_again, "y") == 0);

    printf("\nThank you for using the Age Calculator. Goodbye!\n");

    return 0;
}

/*
** EPITECH PROJECT, 2026
** my_putstr
** File description:
** my_putstr
*/

#include <unistd.h>

int my_putstr(char const *str)
{
    int i = 0;

    if (!str)
        return 84;
    while (str[i])
        i++;
    write(1, str, i);
    return i;
}

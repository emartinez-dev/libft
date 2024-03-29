/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: franmart <franmart@student.42malaga.com>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/03 12:51:50 by franmart          #+#    #+#             */
/*   Updated: 2023/01/06 12:12:52 by franmart         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

int	ft_intlen(int n)
{
	int	count;

	count = 1;
	if (n < 0)
	{
		n = -n;
		count++;
	}
	while (n > 9)
	{
		n /= 10;
		count++;
	}
	return (count);
}

int	ft_lastdigit(int n)
{
	while (n > 9)
		n = n % 10;
	return (n);
}

int	ft_iterative_power(int nb, int power)
{
	int	i;
	int	result;

	result = nb;
	i = 1;
	if (power == 0)
		return (1);
	if (power < 0 || nb == 0)
		return (0);
	while (i < power)
	{
		result *= nb;
		i++;
	}
	return (result);
}

char	*ft_itoa(int n)
{
	int		n_len;
	char	*str;
	int		stop;

	if (n == -2147483648)
		return (ft_strdup("-2147483648"));
	stop = 0;
	n_len = ft_intlen(n);
	str = malloc(sizeof(char) * (n_len + 1));
	if (!str)
		return (0);
	if (n < 0)
	{
		str[0] = '-';
		n = -n;
		stop = 1;
	}
	str[n_len] = '\0';
	while (n_len > stop)
	{
		str[n_len - 1] = ft_lastdigit(n) + '0';
		n /= 10;
		n_len--;
	}
	return (str);
}

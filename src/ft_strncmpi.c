/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncmpi.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: franmart <franmart@student.42malaga.com>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/26 19:02:13 by franmart          #+#    #+#             */
/*   Updated: 2024/09/15 16:38:07 by franmart         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

int	ft_strncmpi(const char *s1, const char *s2, size_t n)
{
	size_t	i;

	i = 0;
	while (i < n - 1 && s1[i] && s2[i]
			&& ft_tolower(s1[i]) == ft_tolower(s2[i]))
		i++;
	if (i < n && ft_tolower(s1[i]) != ft_tolower(s2[i]))
		return ((unsigned char)ft_tolower(s1[i])
				- (unsigned char)ft_tolower(s2[i]));
	return (0);
}
/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: franmart <franmart@student.42malaga.com>   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/29 16:49:10 by franmart          #+#    #+#             */
/*   Updated: 2023/01/06 12:13:30 by franmart         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

int	ft_count_words(char const *s, char c)
{
	int	i;
	int	words;

	i = 0;
	words = 0;
	if (s[i] != c)
		words++;
	while (s[i])
	{
		if (s[i] == c && s[i + 1] != c && s[i + 1])
			words++;
		i++;
	}
	return (words + 1);
}

int	next_del(const char *s, char c)
{
	int	i;

	i = 0;
	while (s[i] != '\0' && s[i] != c)
		i++;
	return (i);
}

char	**ft_split_words(char **arr, const char *s, const char c)
{
	int	i;
	int	del_pos;

	i = 0;
	while (*s)
	{
		while (*s && *s == c)
			s++;
		if (*s)
		{
			del_pos = next_del(s, c);
			arr[i] = ft_calloc(del_pos + 1, sizeof(char));
			if (!arr[i])
				return (NULL);
			ft_memcpy(arr[i], s, del_pos);
			s += del_pos;
			i++;
		}
	}
	return (arr);
}

char	**ft_split(char const *s, char c)
{
	char	**arr;

	arr = ft_calloc(ft_count_words(s, c), sizeof(char *));
	if (!arr)
		return (NULL);
	return (ft_split_words(arr, s, c));
}
